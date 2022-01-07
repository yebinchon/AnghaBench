; ModuleID = '/home/carl/AnghaBench/i3/src/extr_bindings.c_configure_binding.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_bindings.c_configure_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.Mode = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"Binding %p bindtype %s, modifiers %s, input code %s, release %s\0A\00", align 1
@B_UPON_KEYRELEASE = common dso_local global i32 0, align 4
@B_UPON_KEYPRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"bindsym\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"button\00", align 1
@B_MOUSE = common dso_local global i8* null, align 8
@B_KEYBOARD = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [63 x i8] c"Could not parse \22%s\22 as an input code, ignoring this binding.\0A\00", align 1
@I3_XKB_GROUP_MASK_1 = common dso_local global i32 0, align 4
@I3_XKB_GROUP_MASK_2 = common dso_local global i32 0, align 4
@I3_XKB_GROUP_MASK_3 = common dso_local global i32 0, align 4
@I3_XKB_GROUP_MASK_4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [133 x i8] c"Keybinding has more than one Group specified, but your X server is always in precisely one group. The keybinding can never trigger.\0A\00", align 1
@bindings = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @configure_binding(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_7__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.Mode*, align 8
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i32 %9, i32* %21, align 4
  %26 = call %struct.TYPE_7__* @scalloc(i32 1, i32 56)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %22, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = call i32 @DLOG(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %27, i8* %28, i8* %29, i8* %30, i8* %31)
  %33 = load i8*, i8** %15, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %10
  %36 = load i32, i32* @B_UPON_KEYRELEASE, align 4
  br label %39

37:                                               ; preds = %10
  %38 = load i32, i32* @B_UPON_KEYPRESS, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load i8*, i8** %16, align 8
  %44 = icmp ne i8* %43, null
  %45 = zext i1 %44 to i32
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  %48 = load i8*, i8** %17, align 8
  %49 = icmp ne i8* %48, null
  %50 = zext i1 %49 to i32
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 4
  %53 = load i8*, i8** %18, align 8
  %54 = icmp ne i8* %53, null
  %55 = zext i1 %54 to i32
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %39
  %62 = load i8*, i8** %14, align 8
  %63 = call i64 @strncasecmp(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i8*, i8** @B_MOUSE, align 8
  br label %69

67:                                               ; preds = %61
  %68 = load i8*, i8** @B_KEYBOARD, align 8
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i8* [ %66, %65 ], [ %68, %67 ]
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = call i8* @sstrdup(i8* %73)
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  br label %93

77:                                               ; preds = %39
  %78 = load i8*, i8** %14, align 8
  %79 = call i32 @parse_long(i8* %78, i64* %23, i32 10)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %14, align 8
  %83 = call i32 (i8*, ...) @ELOG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %85 = call i32 @FREE(%struct.TYPE_7__* %84)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %11, align 8
  br label %164

86:                                               ; preds = %77
  %87 = load i64, i64* %23, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load i8*, i8** @B_KEYBOARD, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %86, %69
  %94 = load i8*, i8** %19, align 8
  %95 = call i8* @sstrdup(i8* %94)
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = call i32 @event_state_from_str(i8* %98)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  store i32 0, i32* %24, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = ashr i32 %104, 16
  %106 = load i32, i32* @I3_XKB_GROUP_MASK_1, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %93
  %110 = load i32, i32* %24, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %24, align 4
  br label %112

112:                                              ; preds = %109, %93
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = ashr i32 %115, 16
  %117 = load i32, i32* @I3_XKB_GROUP_MASK_2, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = load i32, i32* %24, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %24, align 4
  br label %123

123:                                              ; preds = %120, %112
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = ashr i32 %126, 16
  %128 = load i32, i32* @I3_XKB_GROUP_MASK_3, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load i32, i32* %24, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %24, align 4
  br label %134

134:                                              ; preds = %131, %123
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = ashr i32 %137, 16
  %139 = load i32, i32* @I3_XKB_GROUP_MASK_4, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  %143 = load i32, i32* %24, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %24, align 4
  br label %145

145:                                              ; preds = %142, %134
  %146 = load i32, i32* %24, align 4
  %147 = icmp sgt i32 %146, 1
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = call i32 (i8*, ...) @ELOG(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.4, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %145
  %151 = load i8*, i8** %20, align 8
  %152 = load i32, i32* %21, align 4
  %153 = call %struct.Mode* @mode_from_name(i8* %151, i32 %152)
  store %struct.Mode* %153, %struct.Mode** %25, align 8
  %154 = load %struct.Mode*, %struct.Mode** %25, align 8
  %155 = getelementptr inbounds %struct.Mode, %struct.Mode* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %158 = load i32, i32* @bindings, align 4
  %159 = call i32 @TAILQ_INSERT_TAIL(i32 %156, %struct.TYPE_7__* %157, i32 %158)
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = call i32 @TAILQ_INIT(i32* %161)
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  store %struct.TYPE_7__* %163, %struct.TYPE_7__** %11, align 8
  br label %164

164:                                              ; preds = %150, %81
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  ret %struct.TYPE_7__* %165
}

declare dso_local %struct.TYPE_7__* @scalloc(i32, i32) #1

declare dso_local i32 @DLOG(i8*, %struct.TYPE_7__*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @sstrdup(i8*) #1

declare dso_local i32 @parse_long(i8*, i64*, i32) #1

declare dso_local i32 @ELOG(i8*, ...) #1

declare dso_local i32 @FREE(%struct.TYPE_7__*) #1

declare dso_local i32 @event_state_from_str(i8*) #1

declare dso_local %struct.Mode* @mode_from_name(i8*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
