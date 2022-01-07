; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_mfield.c_MField_KeyDownEvent.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_mfield.c_MField_KeyDownEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@K_INS = common dso_local global i32 0, align 4
@K_KP_INS = common dso_local global i32 0, align 4
@K_SHIFT = common dso_local global i32 0, align 4
@K_DEL = common dso_local global i32 0, align 4
@K_KP_DEL = common dso_local global i32 0, align 4
@K_RIGHTARROW = common dso_local global i32 0, align 4
@K_KP_RIGHTARROW = common dso_local global i32 0, align 4
@K_LEFTARROW = common dso_local global i32 0, align 4
@K_KP_LEFTARROW = common dso_local global i32 0, align 4
@K_HOME = common dso_local global i32 0, align 4
@K_KP_HOME = common dso_local global i32 0, align 4
@K_CTRL = common dso_local global i32 0, align 4
@K_END = common dso_local global i32 0, align 4
@K_KP_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MField_KeyDownEvent(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @K_INS, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @K_KP_INS, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @K_SHIFT, align 4
  %15 = call i64 @trap_Key_IsDown(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = call i32 @MField_Paste(%struct.TYPE_4__* %18)
  br label %211

20:                                               ; preds = %13, %9
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @strlen(i64 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @K_DEL, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @K_KP_DEL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %28, %20
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %32
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %41, %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %49, %53
  %55 = add nsw i64 %54, 1
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %56, %59
  %61 = call i32 @memmove(i64 %46, i64 %55, i32 %60)
  br label %62

62:                                               ; preds = %38, %32
  br label %211

63:                                               ; preds = %28
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @K_RIGHTARROW, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @K_KP_RIGHTARROW, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %106

71:                                               ; preds = %67, %63
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %77, %71
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %88, %91
  %93 = icmp sge i32 %85, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %82
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %100, %94, %82
  br label %211

106:                                              ; preds = %67
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @K_LEFTARROW, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @K_KP_LEFTARROW, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %138

114:                                              ; preds = %110, %106
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %119, %114
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %124
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %132, %124
  br label %211

138:                                              ; preds = %110
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @K_HOME, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %155, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @K_KP_HOME, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %155, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %4, align 4
  %148 = call signext i8 @tolower(i32 %147)
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 97
  br i1 %150, label %151, label %160

151:                                              ; preds = %146
  %152 = load i32, i32* @K_CTRL, align 4
  %153 = call i64 @trap_Key_IsDown(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %151, %142, %138
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  store i32 0, i32* %157, align 8
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  store i32 0, i32* %159, align 4
  br label %211

160:                                              ; preds = %151, %146
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @K_END, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %177, label %164

164:                                              ; preds = %160
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @K_KP_END, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %177, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* %4, align 4
  %170 = call signext i8 @tolower(i32 %169)
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 101
  br i1 %172, label %173, label %197

173:                                              ; preds = %168
  %174 = load i32, i32* @K_CTRL, align 4
  %175 = call i64 @trap_Key_IsDown(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %197

177:                                              ; preds = %173, %164, %160
  %178 = load i32, i32* %5, align 4
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* %5, align 4
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = sub nsw i32 %181, %184
  %186 = add nsw i32 %185, 1
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %177
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  store i32 0, i32* %195, align 4
  br label %196

196:                                              ; preds = %193, %177
  br label %211

197:                                              ; preds = %173, %168
  %198 = load i32, i32* %4, align 4
  %199 = load i32, i32* @K_INS, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %205, label %201

201:                                              ; preds = %197
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* @K_KP_INS, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %201, %197
  %206 = call i32 (...) @trap_Key_GetOverstrikeMode()
  %207 = icmp ne i32 %206, 0
  %208 = xor i1 %207, true
  %209 = zext i1 %208 to i32
  %210 = call i32 @trap_Key_SetOverstrikeMode(i32 %209)
  br label %211

211:                                              ; preds = %17, %62, %105, %137, %155, %196, %205, %201
  ret void
}

declare dso_local i64 @trap_Key_IsDown(i32) #1

declare dso_local i32 @MField_Paste(%struct.TYPE_4__*) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local signext i8 @tolower(i32) #1

declare dso_local i32 @trap_Key_SetOverstrikeMode(i32) #1

declare dso_local i32 @trap_Key_GetOverstrikeMode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
