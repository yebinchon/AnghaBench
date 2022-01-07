; ModuleID = '/home/carl/AnghaBench/i3/src/extr_bindings.c_load_keymap.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_bindings.c_load_keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xkb_keymap = type { i32 }
%struct.xkb_rule_names = type { i32*, i32*, i32*, i32*, i32* }

@xkb_context = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Could not create xkbcommon context\0A\00", align 1
@xkb_supported = common dso_local global i64 0, align 8
@conn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"xkb_x11_keymap_new_from_device failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"No XKB / core keyboard device? Assembling keymap from local RMLVO.\0A\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"Could not get _XKB_RULES_NAMES atom from root window, falling back to defaults.\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"xkb_keymap_new_from_names failed\0A\00", align 1
@xkb_keymap = common dso_local global %struct.xkb_keymap* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_keymap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xkb_keymap*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xkb_rule_names, align 8
  %5 = load i32*, i32** @xkb_context, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = call i32* @xkb_context_new(i32 0)
  store i32* %8, i32** @xkb_context, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 @ELOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %68

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %0
  store %struct.xkb_keymap* null, %struct.xkb_keymap** %2, align 8
  %14 = load i64, i64* @xkb_supported, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, i32* @conn, align 4
  %18 = call i32 @xkb_x11_get_core_keyboard_device_id(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load i32*, i32** @xkb_context, align 8
  %22 = load i32, i32* @conn, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call %struct.xkb_keymap* @xkb_x11_keymap_new_from_device(i32* %21, i32 %22, i32 %23, i32 0)
  store %struct.xkb_keymap* %24, %struct.xkb_keymap** %2, align 8
  %25 = icmp eq %struct.xkb_keymap* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 @ELOG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %68

28:                                               ; preds = %20
  br label %64

29:                                               ; preds = %16, %13
  %30 = call i32 @LOG(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  %31 = bitcast %struct.xkb_rule_names* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 40, i1 false)
  %32 = call i32 @fill_rmlvo_from_root(%struct.xkb_rule_names* %4)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @ELOG(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32*, i32** @xkb_context, align 8
  %38 = call %struct.xkb_keymap* @xkb_keymap_new_from_names(i32* %37, %struct.xkb_rule_names* %4, i32 0)
  store %struct.xkb_keymap* %38, %struct.xkb_keymap** %2, align 8
  %39 = getelementptr inbounds %struct.xkb_rule_names, %struct.xkb_rule_names* %4, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = bitcast i32* %40 to i8*
  %42 = call i32 @free(i8* %41)
  %43 = getelementptr inbounds %struct.xkb_rule_names, %struct.xkb_rule_names* %4, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = bitcast i32* %44 to i8*
  %46 = call i32 @free(i8* %45)
  %47 = getelementptr inbounds %struct.xkb_rule_names, %struct.xkb_rule_names* %4, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = call i32 @free(i8* %49)
  %51 = getelementptr inbounds %struct.xkb_rule_names, %struct.xkb_rule_names* %4, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = call i32 @free(i8* %53)
  %55 = getelementptr inbounds %struct.xkb_rule_names, %struct.xkb_rule_names* %4, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = bitcast i32* %56 to i8*
  %58 = call i32 @free(i8* %57)
  %59 = load %struct.xkb_keymap*, %struct.xkb_keymap** %2, align 8
  %60 = icmp eq %struct.xkb_keymap* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %36
  %62 = call i32 @ELOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %68

63:                                               ; preds = %36
  br label %64

64:                                               ; preds = %63, %28
  %65 = load %struct.xkb_keymap*, %struct.xkb_keymap** @xkb_keymap, align 8
  %66 = call i32 @xkb_keymap_unref(%struct.xkb_keymap* %65)
  %67 = load %struct.xkb_keymap*, %struct.xkb_keymap** %2, align 8
  store %struct.xkb_keymap* %67, %struct.xkb_keymap** @xkb_keymap, align 8
  store i32 1, i32* %1, align 4
  br label %68

68:                                               ; preds = %64, %61, %26, %10
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i32* @xkb_context_new(i32) #1

declare dso_local i32 @ELOG(i8*) #1

declare dso_local i32 @xkb_x11_get_core_keyboard_device_id(i32) #1

declare dso_local %struct.xkb_keymap* @xkb_x11_keymap_new_from_device(i32*, i32, i32, i32) #1

declare dso_local i32 @LOG(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fill_rmlvo_from_root(%struct.xkb_rule_names*) #1

declare dso_local %struct.xkb_keymap* @xkb_keymap_new_from_names(i32*, %struct.xkb_rule_names*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @xkb_keymap_unref(%struct.xkb_keymap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
