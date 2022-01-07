; ModuleID = '/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-data.c_dns_record_hash_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-data.c_dns_record_hash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RH = common dso_local global i64 0, align 8
@tot_hashed_records = common dso_local global i32 0, align 4
@records_hash_prime = common dso_local global double 0.000000e+00, align 8
@max_hashed_records = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dns_record_hash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dns_record_hash_init() #0 {
  %1 = load i64, i64* @RH, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %23

4:                                                ; preds = %0
  %5 = load i32, i32* @tot_hashed_records, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i32, i32* @tot_hashed_records, align 4
  %9 = mul nsw i32 %8, 2
  br label %11

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi i32 [ %9, %7 ], [ 1000000, %10 ]
  %13 = call double @am_choose_hash_prime(i32 %12)
  store double %13, double* @records_hash_prime, align 8
  %14 = load double, double* @records_hash_prime, align 8
  %15 = fmul double %14, 7.500000e-01
  store double %15, double* @max_hashed_records, align 8
  %16 = load double, double* @records_hash_prime, align 8
  %17 = fmul double %16, 4.000000e+00
  %18 = call i64 @malloc(double %17)
  store i64 %18, i64* @RH, align 8
  %19 = load i64, i64* @RH, align 8
  %20 = load double, double* @records_hash_prime, align 8
  %21 = fmul double %20, 4.000000e+00
  %22 = call i32 @memset(i64 %19, i32 255, double %21)
  store i32 0, i32* @tot_hashed_records, align 4
  br label %23

23:                                               ; preds = %11, %3
  ret void
}

declare dso_local double @am_choose_hash_prime(i32) #1

declare dso_local i64 @malloc(double) #1

declare dso_local i32 @memset(i64, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
