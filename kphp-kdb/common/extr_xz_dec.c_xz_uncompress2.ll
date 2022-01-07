; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_xz_uncompress2.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_xz_uncompress2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec = type { i32 }
%struct.xz_buf = type { i32, i32, i32, i8*, i64, i8* }

@XZ_SINGLE = common dso_local global i32 0, align 4
@XZ_STREAM_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xz_uncompress2(i8* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xz_dec*, align 8
  %11 = alloca %struct.xz_buf, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @XZ_SINGLE, align 4
  %14 = call %struct.xz_dec* @xz_dec_init(i32 %13, i32 0)
  store %struct.xz_dec* %14, %struct.xz_dec** %10, align 8
  %15 = load %struct.xz_dec*, %struct.xz_dec** %10, align 8
  %16 = icmp eq %struct.xz_dec* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %42

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %11, i32 0, i32 5
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %11, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %11, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %11, i32 0, i32 3
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %11, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %11, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = load %struct.xz_dec*, %struct.xz_dec** %10, align 8
  %31 = call i32 @xz_dec_run(%struct.xz_dec* %30, %struct.xz_buf* %11)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.xz_dec*, %struct.xz_dec** %10, align 8
  %33 = call i32 @xz_dec_end(%struct.xz_dec* %32)
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @XZ_STREAM_END, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %42

38:                                               ; preds = %18
  %39 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %11, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %37, %17
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.xz_dec* @xz_dec_init(i32, i32) #1

declare dso_local i32 @xz_dec_run(%struct.xz_dec*, %struct.xz_buf*) #1

declare dso_local i32 @xz_dec_end(%struct.xz_dec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
