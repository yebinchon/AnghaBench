; ModuleID = '/home/carl/AnghaBench/i3/i3-config-wizard/extr_main.c_next_state.c'
source_filename = "/home/carl/AnghaBench/i3/i3-config-wizard/extr_main.c_next_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@__CALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"modifiers\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Shift\00", align 1
@xkb_keymap = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [68 x i8] c"xkb_keymap_key_get_syms_by_level returned no symbols for keycode %d\00", align 1
@.str.4 = private unnamed_addr constant [108 x i8] c"xkb_keymap_key_get_syms_by_level (keycode = %d) returned %d symbolsinstead of 1, using only the first one.\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"xkb_keysym_get_name(%u) failed\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"bindsym %s%s%s %s%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@state = common dso_local global i64 0, align 8
@statelist_idx = common dso_local global i32 0, align 4
@statelist = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*)* @next_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @next_state(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4096 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %4, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @__CALL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %127

26:                                               ; preds = %1
  %27 = call i8* @get_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %5, align 8
  %28 = call i8* @get_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @atoi(i8* %28)
  store i32 %29, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = call i32* @strstr(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  %37 = load i32, i32* @xkb_keymap, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @xkb_keymap_key_get_syms_by_level(i32 %37, i32 %38, i32 0, i32 0, i32** %8)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @errx(i32 1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @keysym_used_on_other_key(i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %45
  br label %54

54:                                               ; preds = %53, %32, %26
  %55 = load i32, i32* @xkb_keymap, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @xkb_keymap_key_get_syms_by_level(i32 %55, i32 %56, i32 0, i32 %57, i32** %10)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @errx(i32 1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %61, %54
  %65 = load i32, i32* %11, align 4
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @printf(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.4, i64 0, i64 0), i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %76 = call i32 @xkb_keysym_get_name(i32 %74, i8* %75, i32 4096)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i32, i32* @EXIT_FAILURE, align 4
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @errx(i32 %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %78, %71
  %85 = call i8* @get_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i8* %85, i8** %13, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i8* @sstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  br label %93

90:                                               ; preds = %84
  %91 = load i8*, i8** %5, align 8
  %92 = call i8* @sstrdup(i8* %91)
  br label %93

93:                                               ; preds = %90, %88
  %94 = phi i8* [ %89, %88 ], [ %92, %90 ]
  store i8* %94, i8** %15, align 8
  br label %95

95:                                               ; preds = %99, %93
  %96 = load i8*, i8** %15, align 8
  %97 = call i8* @strchr(i8* %96, i8 signext 44)
  store i8* %97, i8** %16, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i8*, i8** %16, align 8
  store i8 43, i8* %100, align 1
  br label %95

101:                                              ; preds = %95
  %102 = load i8*, i8** %5, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %107

105:                                              ; preds = %101
  %106 = load i8*, i8** %15, align 8
  br label %107

107:                                              ; preds = %105, %104
  %108 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %104 ], [ %106, %105 ]
  %109 = load i8*, i8** %5, align 8
  %110 = icmp eq i8* %109, null
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)
  %113 = getelementptr inbounds [4096 x i8], [4096 x i8]* %12, i64 0, i64 0
  %114 = load i8*, i8** %13, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %119

117:                                              ; preds = %107
  %118 = load i8*, i8** %13, align 8
  br label %119

119:                                              ; preds = %117, %116
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %116 ], [ %118, %117 ]
  %121 = call i8* @get_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %122 = call i32 @sasprintf(i8** %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %108, i8* %112, i8* %113, i8* %120, i8* %121)
  %123 = call i32 (...) @clear_stack()
  %124 = load i8*, i8** %15, align 8
  %125 = call i32 @free(i8* %124)
  %126 = load i8*, i8** %14, align 8
  store i8* %126, i8** %2, align 8
  br label %155

127:                                              ; preds = %1
  %128 = load i64, i64* %4, align 8
  store i64 %128, i64* @state, align 8
  store i32 0, i32* %17, align 4
  br label %129

129:                                              ; preds = %145, %127
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* @statelist_idx, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %129
  %134 = load i64*, i64** @statelist, align 8
  %135 = load i32, i32* %17, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %4, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %145

142:                                              ; preds = %133
  %143 = load i32, i32* %17, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* @statelist_idx, align 4
  store i8* null, i8** %2, align 8
  br label %155

145:                                              ; preds = %141
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %17, align 4
  br label %129

148:                                              ; preds = %129
  %149 = load i64, i64* %4, align 8
  %150 = load i64*, i64** @statelist, align 8
  %151 = load i32, i32* @statelist_idx, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* @statelist_idx, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i64, i64* %150, i64 %153
  store i64 %149, i64* %154, align 8
  store i8* null, i8** %2, align 8
  br label %155

155:                                              ; preds = %148, %142, %119
  %156 = load i8*, i8** %2, align 8
  ret i8* %156
}

declare dso_local i8* @get_string(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @xkb_keymap_key_get_syms_by_level(i32, i32, i32, i32, i32**) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @keysym_used_on_other_key(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @xkb_keysym_get_name(i32, i8*, i32) #1

declare dso_local i8* @sstrdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @sasprintf(i8**, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @clear_stack(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
