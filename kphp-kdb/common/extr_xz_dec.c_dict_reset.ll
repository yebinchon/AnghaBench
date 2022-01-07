; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_dict_reset.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_xz_dec.c_dict_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dictionary = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.xz_buf = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dictionary*, %struct.xz_buf*)* @dict_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dict_reset(%struct.dictionary* %0, %struct.xz_buf* %1) #0 {
  %3 = alloca %struct.dictionary*, align 8
  %4 = alloca %struct.xz_buf*, align 8
  store %struct.dictionary* %0, %struct.dictionary** %3, align 8
  store %struct.xz_buf* %1, %struct.xz_buf** %4, align 8
  %5 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %6 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @DEC_IS_SINGLE(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load %struct.xz_buf*, %struct.xz_buf** %4, align 8
  %12 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.xz_buf*, %struct.xz_buf** %4, align 8
  %15 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %19 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %18, i32 0, i32 5
  store i64 %17, i64* %19, align 8
  %20 = load %struct.xz_buf*, %struct.xz_buf** %4, align 8
  %21 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.xz_buf*, %struct.xz_buf** %4, align 8
  %24 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %28 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %27, i32 0, i32 4
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %10, %2
  %30 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %31 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %33 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %35 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %37 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  ret void
}

declare dso_local i64 @DEC_IS_SINGLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
