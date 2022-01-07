; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_strtotimeval.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_strtotimeval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.timeval*)* @evdns_strtotimeval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdns_strtotimeval(i8* %0, %struct.timeval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call double @strtod(i8* %8, i8** %7)
  store double %9, double* %6, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %43

14:                                               ; preds = %2
  %15 = load double, double* %6, align 8
  %16 = fcmp olt double %15, 0.000000e+00
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %43

18:                                               ; preds = %14
  %19 = load double, double* %6, align 8
  %20 = fptosi double %19 to i32
  %21 = load %struct.timeval*, %struct.timeval** %5, align 8
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load double, double* %6, align 8
  %24 = load double, double* %6, align 8
  %25 = fptosi double %24 to i32
  %26 = sitofp i32 %25 to double
  %27 = fsub double %23, %26
  %28 = fmul double %27, 1.000000e+06
  %29 = fptosi double %28 to i32
  %30 = load %struct.timeval*, %struct.timeval** %5, align 8
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.timeval*, %struct.timeval** %5, align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %18
  %37 = load %struct.timeval*, %struct.timeval** %5, align 8
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 1000
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %43

42:                                               ; preds = %36, %18
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %41, %17, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local double @strtod(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
