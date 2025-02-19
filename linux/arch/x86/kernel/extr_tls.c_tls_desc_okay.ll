; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tls.c_tls_desc_okay.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tls.c_tls_desc_okay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_desc = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.user_desc*)* @tls_desc_okay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_desc_okay(%struct.user_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.user_desc*, align 8
  store %struct.user_desc* %0, %struct.user_desc** %3, align 8
  %4 = load %struct.user_desc*, %struct.user_desc** %3, align 8
  %5 = call i64 @LDT_empty(%struct.user_desc* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load %struct.user_desc*, %struct.user_desc** %3, align 8
  %9 = call i64 @LDT_zero(%struct.user_desc* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  store i32 1, i32* %2, align 4
  br label %31

12:                                               ; preds = %7
  %13 = load %struct.user_desc*, %struct.user_desc** %3, align 8
  %14 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %31

18:                                               ; preds = %12
  %19 = load %struct.user_desc*, %struct.user_desc** %3, align 8
  %20 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %31

24:                                               ; preds = %18
  %25 = load %struct.user_desc*, %struct.user_desc** %3, align 8
  %26 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %31

30:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %23, %17, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @LDT_empty(%struct.user_desc*) #1

declare dso_local i64 @LDT_zero(%struct.user_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
