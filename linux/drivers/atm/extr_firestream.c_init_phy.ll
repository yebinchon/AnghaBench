; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_init_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_dev = type { i32 }
%struct.reginit_item = type { i32, i32 }

@PHY_EOF = common dso_local global i32 0, align 4
@PHY_CLEARALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_dev*, %struct.reginit_item*)* @init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_phy(%struct.fs_dev* %0, %struct.reginit_item* %1) #0 {
  %3 = alloca %struct.fs_dev*, align 8
  %4 = alloca %struct.reginit_item*, align 8
  %5 = alloca i32, align 4
  store %struct.fs_dev* %0, %struct.fs_dev** %3, align 8
  store %struct.reginit_item* %1, %struct.reginit_item** %4, align 8
  %6 = call i32 (...) @func_enter()
  br label %7

7:                                                ; preds = %43, %2
  %8 = load %struct.reginit_item*, %struct.reginit_item** %4, align 8
  %9 = getelementptr inbounds %struct.reginit_item, %struct.reginit_item* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PHY_EOF, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %7
  %14 = load %struct.reginit_item*, %struct.reginit_item** %4, align 8
  %15 = getelementptr inbounds %struct.reginit_item, %struct.reginit_item* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PHY_CLEARALL, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %30, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.reginit_item*, %struct.reginit_item** %4, align 8
  %23 = getelementptr inbounds %struct.reginit_item, %struct.reginit_item* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @write_phy(%struct.fs_dev* %27, i32 %28, i32 0)
  br label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %20

33:                                               ; preds = %20
  br label %43

34:                                               ; preds = %13
  %35 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %36 = load %struct.reginit_item*, %struct.reginit_item** %4, align 8
  %37 = getelementptr inbounds %struct.reginit_item, %struct.reginit_item* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.reginit_item*, %struct.reginit_item** %4, align 8
  %40 = getelementptr inbounds %struct.reginit_item, %struct.reginit_item* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @write_phy(%struct.fs_dev* %35, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %34, %33
  %44 = load %struct.reginit_item*, %struct.reginit_item** %4, align 8
  %45 = getelementptr inbounds %struct.reginit_item, %struct.reginit_item* %44, i32 1
  store %struct.reginit_item* %45, %struct.reginit_item** %4, align 8
  br label %7

46:                                               ; preds = %7
  %47 = call i32 (...) @func_exit()
  ret i32 0
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @write_phy(%struct.fs_dev*, i32, i32) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
