; ModuleID = '/home/carl/AnghaBench/git/refs/extr_..git-compat-util.h_regexec_buf.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_..git-compat-util.h_regexec_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@REG_STARTEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i64, %struct.TYPE_4__*, i32)* @regexec_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regexec_buf(i32* %0, i8* %1, i64 %2, i64 %3, %struct.TYPE_4__* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i64, i64* %10, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %6
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br label %18

18:                                               ; preds = %15, %6
  %19 = phi i1 [ false, %6 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @REG_STARTEND, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @regexec(i32* %29, i8* %30, i64 %31, %struct.TYPE_4__* %32, i32 %35)
  ret i32 %36
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @regexec(i32*, i8*, i64, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
