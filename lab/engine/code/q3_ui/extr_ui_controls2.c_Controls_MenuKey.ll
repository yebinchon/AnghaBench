; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_controls2.c_Controls_MenuKey.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_controls2.c_Controls_MenuKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__, i8*, i8* }
%struct.TYPE_9__ = type { i64, i64* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@qfalse = common dso_local global i8* null, align 8
@s_controls = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@K_CHAR_FLAG = common dso_local global i32 0, align 4
@menu_out_sound = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@g_bindings = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @Controls_MenuKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Controls_MenuKey(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i8*, i8** @qfalse, align 8
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_controls, i32 0, i32 1), align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %20 [
    i32 132, label %13
    i32 131, label %13
    i32 129, label %13
    i32 128, label %14
    i32 130, label %14
  ]

13:                                               ; preds = %11, %11, %11
  store i32 -1, i32* %3, align 4
  br label %21

14:                                               ; preds = %11, %11
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_controls, i32 0, i32 2), align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (...) @Controls_SetConfig()
  br label %19

19:                                               ; preds = %17, %14
  br label %183

20:                                               ; preds = %11
  br label %183

21:                                               ; preds = %13
  br label %36

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @K_CHAR_FLAG, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %183

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  switch i32 %29, label %35 [
    i32 130, label %30
    i32 96, label %34
  ]

30:                                               ; preds = %28
  %31 = load i8*, i8** @qfalse, align 8
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_controls, i32 0, i32 1), align 8
  %32 = call i32 (...) @Controls_Update()
  %33 = load i32, i32* @menu_out_sound, align 4
  store i32 %33, i32* %2, align 4
  br label %186

34:                                               ; preds = %28
  br label %183

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i8*, i8** @qtrue, align 8
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_controls, i32 0, i32 2), align 8
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %78

40:                                               ; preds = %36
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_bindings, align 8
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %7, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %72, %40
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %77

48:                                               ; preds = %42
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %48
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 -1, i32* %70, align 4
  br label %71

71:                                               ; preds = %63, %57
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 1
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %7, align 8
  br label %42

77:                                               ; preds = %47
  br label %78

78:                                               ; preds = %77, %36
  %79 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_controls, i32 0, i32 0, i32 1), align 8
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_controls, i32 0, i32 0, i32 0), align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.TYPE_6__*
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %4, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_bindings, align 8
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %7, align 8
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %170, %78
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  br label %175

93:                                               ; preds = %87
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %169

99:                                               ; preds = %93
  %100 = load i8*, i8** @qtrue, align 8
  store i8* %100, i8** %6, align 8
  %101 = load i32, i32* %3, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %128

103:                                              ; preds = %99
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, -1
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @trap_Key_SetBinding(i32 %111, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store i32 -1, i32* %114, align 4
  br label %115

115:                                              ; preds = %108, %103
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, -1
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @trap_Key_SetBinding(i32 %123, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i32 -1, i32* %126, align 4
  br label %127

127:                                              ; preds = %120, %115
  br label %168

128:                                              ; preds = %99
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32, i32* %3, align 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  br label %167

137:                                              ; preds = %128
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %3, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %137
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* %3, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  br label %166

152:                                              ; preds = %143, %137
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @trap_Key_SetBinding(i32 %155, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @trap_Key_SetBinding(i32 %159, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %161 = load i32, i32* %3, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  store i32 -1, i32* %165, align 4
  br label %166

166:                                              ; preds = %152, %148
  br label %167

167:                                              ; preds = %166, %133
  br label %168

168:                                              ; preds = %167, %127
  br label %175

169:                                              ; preds = %93
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %5, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 1
  store %struct.TYPE_7__* %174, %struct.TYPE_7__** %7, align 8
  br label %87

175:                                              ; preds = %168, %92
  %176 = load i8*, i8** @qfalse, align 8
  store i8* %176, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_controls, i32 0, i32 1), align 8
  %177 = load i8*, i8** %6, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = call i32 (...) @Controls_Update()
  %181 = load i32, i32* @menu_out_sound, align 4
  store i32 %181, i32* %2, align 4
  br label %186

182:                                              ; preds = %175
  br label %183

183:                                              ; preds = %182, %34, %27, %20, %19
  %184 = load i32, i32* %3, align 4
  %185 = call i32 @Menu_DefaultKey(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_controls, i32 0, i32 0), i32 %184)
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %183, %179, %30
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @Controls_SetConfig(...) #1

declare dso_local i32 @Controls_Update(...) #1

declare dso_local i32 @trap_Key_SetBinding(i32, i8*) #1

declare dso_local i32 @Menu_DefaultKey(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
