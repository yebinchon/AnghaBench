; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.h_cmp_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.h_cmp_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coproc_reg = type { i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coproc_reg*, %struct.coproc_reg*)* @cmp_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_reg(%struct.coproc_reg* %0, %struct.coproc_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.coproc_reg*, align 8
  %5 = alloca %struct.coproc_reg*, align 8
  store %struct.coproc_reg* %0, %struct.coproc_reg** %4, align 8
  store %struct.coproc_reg* %1, %struct.coproc_reg** %5, align 8
  %6 = load %struct.coproc_reg*, %struct.coproc_reg** %4, align 8
  %7 = load %struct.coproc_reg*, %struct.coproc_reg** %5, align 8
  %8 = icmp eq %struct.coproc_reg* %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.coproc_reg*, %struct.coproc_reg** %4, align 8
  %12 = icmp ne %struct.coproc_reg* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %95

14:                                               ; preds = %2
  %15 = load %struct.coproc_reg*, %struct.coproc_reg** %5, align 8
  %16 = icmp ne %struct.coproc_reg* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %95

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.coproc_reg*, %struct.coproc_reg** %4, align 8
  %21 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.coproc_reg*, %struct.coproc_reg** %5, align 8
  %24 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.coproc_reg*, %struct.coproc_reg** %4, align 8
  %29 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.coproc_reg*, %struct.coproc_reg** %5, align 8
  %32 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %95

36:                                               ; preds = %19
  %37 = load %struct.coproc_reg*, %struct.coproc_reg** %4, align 8
  %38 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.coproc_reg*, %struct.coproc_reg** %5, align 8
  %41 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load %struct.coproc_reg*, %struct.coproc_reg** %4, align 8
  %46 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.coproc_reg*, %struct.coproc_reg** %5, align 8
  %49 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %95

53:                                               ; preds = %36
  %54 = load %struct.coproc_reg*, %struct.coproc_reg** %4, align 8
  %55 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.coproc_reg*, %struct.coproc_reg** %5, align 8
  %58 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load %struct.coproc_reg*, %struct.coproc_reg** %4, align 8
  %63 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.coproc_reg*, %struct.coproc_reg** %5, align 8
  %66 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %3, align 4
  br label %95

70:                                               ; preds = %53
  %71 = load %struct.coproc_reg*, %struct.coproc_reg** %4, align 8
  %72 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.coproc_reg*, %struct.coproc_reg** %5, align 8
  %75 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = load %struct.coproc_reg*, %struct.coproc_reg** %4, align 8
  %80 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.coproc_reg*, %struct.coproc_reg** %5, align 8
  %83 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %3, align 4
  br label %95

87:                                               ; preds = %70
  %88 = load %struct.coproc_reg*, %struct.coproc_reg** %5, align 8
  %89 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.coproc_reg*, %struct.coproc_reg** %4, align 8
  %92 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %90, %93
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %87, %78, %61, %44, %27, %17, %13
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
