; ModuleID = '/home/carl/AnghaBench/i3/src/extr_bindings.c_get_binding_from_xcb_event.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_bindings.c_get_binding_from_xcb_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@XCB_KEY_RELEASE = common dso_local global i64 0, align 8
@XCB_BUTTON_RELEASE = common dso_local global i64 0, align 8
@XCB_BUTTON_PRESS = common dso_local global i64 0, align 8
@B_MOUSE = common dso_local global i32 0, align 4
@B_KEYBOARD = common dso_local global i32 0, align 4
@XCB_MOD_MASK_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"(removed capslock, state = 0x%x)\0A\00", align 1
@I3_XKB_GROUP_MASK_1 = common dso_local global i32 0, align 4
@I3_XKB_GROUP_MASK_2 = common dso_local global i32 0, align 4
@I3_XKB_GROUP_MASK_3 = common dso_local global i32 0, align 4
@I3_XKB_GROUP_MASK_4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"(transformed keyboard group, state = 0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_binding_from_xcb_event(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @XCB_KEY_RELEASE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @XCB_BUTTON_RELEASE, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i1 [ true, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %3, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @XCB_BUTTON_RELEASE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %19
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @XCB_BUTTON_PRESS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %19
  %34 = load i32, i32* @B_MOUSE, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @B_KEYBOARD, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %4, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = bitcast %struct.TYPE_5__* %39 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %5, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = bitcast %struct.TYPE_5__* %43 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @XCB_MOD_MASK_LOCK, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @DLOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 24576
  %55 = ashr i32 %54, 13
  switch i32 %55, label %76 [
    i32 131, label %56
    i32 130, label %61
    i32 129, label %66
    i32 128, label %71
  ]

56:                                               ; preds = %37
  %57 = load i32, i32* @I3_XKB_GROUP_MASK_1, align 4
  %58 = shl i32 %57, 16
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %76

61:                                               ; preds = %37
  %62 = load i32, i32* @I3_XKB_GROUP_MASK_2, align 4
  %63 = shl i32 %62, 16
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %76

66:                                               ; preds = %37
  %67 = load i32, i32* @I3_XKB_GROUP_MASK_3, align 4
  %68 = shl i32 %67, 16
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %76

71:                                               ; preds = %37
  %72 = load i32, i32* @I3_XKB_GROUP_MASK_4, align 4
  %73 = shl i32 %72, 16
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %37, %71, %66, %61, %56
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, -24577
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @DLOG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32* @get_binding(i32 %81, i32 %82, i32 %83, i32 %84)
  ret i32* %85
}

declare dso_local i32 @DLOG(i8*, i32) #1

declare dso_local i32* @get_binding(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
