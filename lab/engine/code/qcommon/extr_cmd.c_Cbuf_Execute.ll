; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cmd.c_Cbuf_Execute.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cmd.c_Cbuf_Execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@MAX_CMD_LINE = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@cmd_text = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@cmd_wait = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cbuf_Execute() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = load i32, i32* @MAX_CMD_LINE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i64, i64* @qfalse, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* @qfalse, align 8
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %194, %0
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 0), align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %196

17:                                               ; preds = %14
  %18 = load i64, i64* @cmd_wait, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* @cmd_wait, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* @cmd_wait, align 8
  br label %196

23:                                               ; preds = %17
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 1), align 8
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %159, %23
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 0), align 8
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %162

30:                                               ; preds = %26
  %31 = load i8*, i8** %2, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 34
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %30
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %137, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 0), align 8
  %48 = sub nsw i32 %47, 1
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %121

50:                                               ; preds = %45
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %72, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %2, align 8
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 47
  br i1 %60, label %61, label %72

61:                                               ; preds = %53
  %62 = load i8*, i8** %2, align 8
  %63 = load i32, i32* %1, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 47
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i64, i64* @qtrue, align 8
  store i64 %71, i64* %7, align 8
  br label %120

72:                                               ; preds = %61, %53, %50
  %73 = load i64, i64* %7, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %94, label %75

75:                                               ; preds = %72
  %76 = load i8*, i8** %2, align 8
  %77 = load i32, i32* %1, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 47
  br i1 %82, label %83, label %94

83:                                               ; preds = %75
  %84 = load i8*, i8** %2, align 8
  %85 = load i32, i32* %1, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 42
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i64, i64* @qtrue, align 8
  store i64 %93, i64* %6, align 8
  br label %119

94:                                               ; preds = %83, %75, %72
  %95 = load i64, i64* %6, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %94
  %98 = load i8*, i8** %2, align 8
  %99 = load i32, i32* %1, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 42
  br i1 %104, label %105, label %118

105:                                              ; preds = %97
  %106 = load i8*, i8** %2, align 8
  %107 = load i32, i32* %1, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 47
  br i1 %113, label %114, label %118

114:                                              ; preds = %105
  %115 = load i64, i64* @qfalse, align 8
  store i64 %115, i64* %6, align 8
  %116 = load i32, i32* %1, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %1, align 4
  br label %162

118:                                              ; preds = %105, %97, %94
  br label %119

119:                                              ; preds = %118, %92
  br label %120

120:                                              ; preds = %119, %70
  br label %121

121:                                              ; preds = %120, %45
  %122 = load i64, i64* %7, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %136, label %124

124:                                              ; preds = %121
  %125 = load i64, i64* %6, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %124
  %128 = load i8*, i8** %2, align 8
  %129 = load i32, i32* %1, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 59
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  br label %162

136:                                              ; preds = %127, %124, %121
  br label %137

137:                                              ; preds = %136, %41
  %138 = load i64, i64* %6, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %158, label %140

140:                                              ; preds = %137
  %141 = load i8*, i8** %2, align 8
  %142 = load i32, i32* %1, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 10
  br i1 %147, label %156, label %148

148:                                              ; preds = %140
  %149 = load i8*, i8** %2, align 8
  %150 = load i32, i32* %1, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 13
  br i1 %155, label %156, label %158

156:                                              ; preds = %148, %140
  %157 = load i64, i64* @qfalse, align 8
  store i64 %157, i64* %7, align 8
  br label %162

158:                                              ; preds = %148, %137
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %1, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %1, align 4
  br label %26

162:                                              ; preds = %156, %135, %114, %26
  %163 = load i32, i32* %1, align 4
  %164 = load i32, i32* @MAX_CMD_LINE, align 4
  %165 = sub nsw i32 %164, 1
  %166 = icmp sge i32 %163, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load i32, i32* @MAX_CMD_LINE, align 4
  %169 = sub nsw i32 %168, 1
  store i32 %169, i32* %1, align 4
  br label %170

170:                                              ; preds = %167, %162
  %171 = load i8*, i8** %2, align 8
  %172 = load i32, i32* %1, align 4
  %173 = call i32 @Com_Memcpy(i8* %11, i8* %171, i32 %172)
  %174 = load i32, i32* %1, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %11, i64 %175
  store i8 0, i8* %176, align 1
  %177 = load i32, i32* %1, align 4
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 0), align 8
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %170
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 0), align 8
  br label %194

181:                                              ; preds = %170
  %182 = load i32, i32* %1, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %1, align 4
  %184 = load i32, i32* %1, align 4
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 0), align 8
  %186 = sub nsw i32 %185, %184
  store i32 %186, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 0), align 8
  %187 = load i8*, i8** %2, align 8
  %188 = load i8*, i8** %2, align 8
  %189 = load i32, i32* %1, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmd_text, i32 0, i32 0), align 8
  %193 = call i32 @memmove(i8* %187, i8* %191, i32 %192)
  br label %194

194:                                              ; preds = %181, %180
  %195 = call i32 @Cmd_ExecuteString(i8* %11)
  br label %14

196:                                              ; preds = %20, %14
  %197 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %197)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_Memcpy(i8*, i8*, i32) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

declare dso_local i32 @Cmd_ExecuteString(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
