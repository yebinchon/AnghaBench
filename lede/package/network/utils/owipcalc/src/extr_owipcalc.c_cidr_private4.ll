; ModuleID = '/home/carl/AnghaBench/lede/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_private4.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_private4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cidr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@printed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cidr*)* @cidr_private4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cidr_private4(%struct.cidr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cidr*, align 8
  %4 = alloca i32, align 4
  store %struct.cidr* %0, %struct.cidr** %3, align 8
  %5 = load %struct.cidr*, %struct.cidr** %3, align 8
  %6 = getelementptr inbounds %struct.cidr, %struct.cidr* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ntohl(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i64, i64* @printed, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp sge i32 %16, 167772160
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = icmp sle i32 %19, 184549375
  br i1 %20, label %33, label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %4, align 4
  %23 = icmp uge i32 %22, -1408237568
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = icmp ule i32 %25, -1407188993
  br i1 %26, label %33, label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %4, align 4
  %29 = icmp uge i32 %28, -1062731776
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = icmp ule i32 %31, -1062666241
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %24, %18
  %34 = call i32 @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %37

35:                                               ; preds = %30, %27
  %36 = call i32 @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @qprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
