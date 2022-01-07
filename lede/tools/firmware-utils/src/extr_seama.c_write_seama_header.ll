; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_seama.c_write_seama_header.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_seama.c_write_seama_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i64, i8* }

@.str = private unnamed_addr constant [23 x i8] c"SEAMA META : %d bytes\0A\00", align 1
@SEAMA_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8**, i64, i64)* @write_seama_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_seama_header(i32* %0, i8** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %27, %4
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load i8**, i8*** %6, align 8
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = add nsw i64 %21, 1
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %16
  %28 = load i64, i64* %10, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %10, align 8
  br label %12

30:                                               ; preds = %12
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, 3
  %33 = sdiv i32 %32, 4
  %34 = mul nsw i32 %33, 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @verbose(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* @SEAMA_MAGIC, align 8
  %38 = call i8* @htonl(i64 %37)
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  store i8* %38, i8** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @htons(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i8* @htonl(i64 %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i8* %45, i8** %46, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i64 @fwrite(%struct.TYPE_3__* %9, i32 32, i32 1, i32* %47)
  ret i64 %48
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @verbose(i8*, i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @fwrite(%struct.TYPE_3__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
