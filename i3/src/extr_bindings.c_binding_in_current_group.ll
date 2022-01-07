; ModuleID = '/home/carl/AnghaBench/i3/src/extr_bindings.c_binding_in_current_group.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_bindings.c_binding_in_current_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@I3_XKB_GROUP_MASK_ANY = common dso_local global i32 0, align 4
@xkb_current_group = common dso_local global i32 0, align 4
@I3_XKB_GROUP_MASK_1 = common dso_local global i32 0, align 4
@I3_XKB_GROUP_MASK_2 = common dso_local global i32 0, align 4
@I3_XKB_GROUP_MASK_3 = common dso_local global i32 0, align 4
@I3_XKB_GROUP_MASK_4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"BUG: xkb_current_group (= %d) outside of [XCB_XKB_GROUP_1..XCB_XKB_GROUP_4]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @binding_in_current_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binding_in_current_group(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = ashr i32 %6, 16
  %8 = load i32, i32* @I3_XKB_GROUP_MASK_ANY, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %44

11:                                               ; preds = %1
  %12 = load i32, i32* @xkb_current_group, align 4
  switch i32 %12, label %41 [
    i32 131, label %13
    i32 130, label %20
    i32 129, label %27
    i32 128, label %34
  ]

13:                                               ; preds = %11
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 16
  %18 = load i32, i32* @I3_XKB_GROUP_MASK_1, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %2, align 4
  br label %44

20:                                               ; preds = %11
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 16
  %25 = load i32, i32* @I3_XKB_GROUP_MASK_2, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %2, align 4
  br label %44

27:                                               ; preds = %11
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 16
  %32 = load i32, i32* @I3_XKB_GROUP_MASK_3, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %2, align 4
  br label %44

34:                                               ; preds = %11
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 16
  %39 = load i32, i32* @I3_XKB_GROUP_MASK_4, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %2, align 4
  br label %44

41:                                               ; preds = %11
  %42 = load i32, i32* @xkb_current_group, align 4
  %43 = call i32 @ELOG(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %34, %27, %20, %13, %10
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @ELOG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
