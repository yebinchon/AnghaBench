; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_child.c_send_block_clicked.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_child.c_send_block_clicked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@child = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@gen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"instance\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"button\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"modifiers\00", align 1
@XCB_MOD_MASK_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"Shift\00", align 1
@XCB_MOD_MASK_CONTROL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"Control\00", align 1
@XCB_MOD_MASK_1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"Mod1\00", align 1
@XCB_MOD_MASK_2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"Mod2\00", align 1
@XCB_MOD_MASK_3 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"Mod3\00", align 1
@XCB_MOD_MASK_4 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"Mod4\00", align 1
@XCB_MOD_MASK_5 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"Mod5\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"relative_x\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"relative_y\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"height\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_block_clicked(i32 %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @child, i32 0, i32 0), align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %10
  br label %127

24:                                               ; preds = %10
  %25 = call i32 (...) @child_click_events_initialize()
  %26 = load i32, i32* @gen, align 4
  %27 = call i32 @yajl_gen_map_open(i32 %26)
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = call i32 @ystr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @ystr(i8* %32)
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i8*, i8** %13, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = call i32 @ystr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @ystr(i8* %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = call i32 @ystr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @gen, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @yajl_gen_integer(i32 %43, i32 %44)
  %46 = call i32 @ystr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @gen, align 4
  %48 = call i32 @yajl_gen_array_open(i32 %47)
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* @XCB_MOD_MASK_SHIFT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = call i32 @ystr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %41
  %56 = load i32, i32* %20, align 4
  %57 = load i32, i32* @XCB_MOD_MASK_CONTROL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 @ystr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* @XCB_MOD_MASK_1, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 @ystr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %62
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* @XCB_MOD_MASK_2, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 @ystr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* @XCB_MOD_MASK_3, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 @ystr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %76
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* @XCB_MOD_MASK_4, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 @ystr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %83
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* @XCB_MOD_MASK_5, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = call i32 @ystr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %90
  %98 = load i32, i32* @gen, align 4
  %99 = call i32 @yajl_gen_array_close(i32 %98)
  %100 = call i32 @ystr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %101 = load i32, i32* @gen, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @yajl_gen_integer(i32 %101, i32 %102)
  %104 = call i32 @ystr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %105 = load i32, i32* @gen, align 4
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @yajl_gen_integer(i32 %105, i32 %106)
  %108 = call i32 @ystr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %109 = load i32, i32* @gen, align 4
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @yajl_gen_integer(i32 %109, i32 %110)
  %112 = call i32 @ystr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %113 = load i32, i32* @gen, align 4
  %114 = load i32, i32* %17, align 4
  %115 = call i32 @yajl_gen_integer(i32 %113, i32 %114)
  %116 = call i32 @ystr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %117 = load i32, i32* @gen, align 4
  %118 = load i32, i32* %18, align 4
  %119 = call i32 @yajl_gen_integer(i32 %117, i32 %118)
  %120 = call i32 @ystr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %121 = load i32, i32* @gen, align 4
  %122 = load i32, i32* %19, align 4
  %123 = call i32 @yajl_gen_integer(i32 %121, i32 %122)
  %124 = load i32, i32* @gen, align 4
  %125 = call i32 @yajl_gen_map_close(i32 %124)
  %126 = call i32 (...) @child_write_output()
  br label %127

127:                                              ; preds = %97, %23
  ret void
}

declare dso_local i32 @child_click_events_initialize(...) #1

declare dso_local i32 @yajl_gen_map_open(i32) #1

declare dso_local i32 @ystr(i8*) #1

declare dso_local i32 @yajl_gen_integer(i32, i32) #1

declare dso_local i32 @yajl_gen_array_open(i32) #1

declare dso_local i32 @yajl_gen_array_close(i32) #1

declare dso_local i32 @yajl_gen_map_close(i32) #1

declare dso_local i32 @child_write_output(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
