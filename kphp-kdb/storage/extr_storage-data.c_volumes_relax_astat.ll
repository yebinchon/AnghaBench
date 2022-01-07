; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_volumes_relax_astat.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_volumes_relax_astat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@volumes_relax_astat.last_call_time = internal global i32 0, align 4
@M_LN2 = common dso_local global double 0.000000e+00, align 8
@now = common dso_local global i32 0, align 4
@volumes = common dso_local global i32 0, align 4
@Volumes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @volumes_relax_astat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @volumes_relax_astat() #0 {
  %1 = alloca double, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @volumes_relax_astat.last_call_time, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %0
  %6 = load double, double* @M_LN2, align 8
  %7 = fneg double %6
  %8 = fdiv double %7, 8.640000e+04
  %9 = load i32, i32* @now, align 4
  %10 = load i32, i32* @volumes_relax_astat.last_call_time, align 4
  %11 = sub nsw i32 %9, %10
  %12 = sitofp i32 %11 to double
  %13 = fmul double %8, %12
  %14 = call double @exp(double %13) #3
  br label %16

15:                                               ; preds = %0
  br label %16

16:                                               ; preds = %15, %5
  %17 = phi double [ %14, %5 ], [ 0.000000e+00, %15 ]
  store double %17, double* %1, align 8
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %30, %16
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @volumes, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i32*, i32** @Volumes, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load double, double* %1, align 8
  %29 = call i32 @volume_relax_astat(i32 %27, double %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %18

33:                                               ; preds = %18
  %34 = load i32, i32* @now, align 4
  store i32 %34, i32* @volumes_relax_astat.last_call_time, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local double @exp(double) #1

declare dso_local i32 @volume_relax_astat(i32, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
