; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotInitialChat.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotInitialChat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (i32, i8*, i8*)* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_12__ = type { i32 }

@qfalse = common dso_local global i32 0, align 4
@PRT_MESSAGE = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotInitialChat(i32 %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_11__, align 8
  %26 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %12, align 4
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  store i8* %10, i8** %22, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call %struct.TYPE_12__* @BotChatStateFromHandle(i32 %27)
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %26, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %30 = icmp ne %struct.TYPE_12__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %11
  br label %246

32:                                               ; preds = %11
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %246

38:                                               ; preds = %32
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = call i8* @BotChooseInitialChatMessage(%struct.TYPE_12__* %39, i8* %40)
  store i8* %41, i8** %23, align 8
  %42 = load i8*, i8** %23, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %246

45:                                               ; preds = %38
  %46 = call i32 @Com_Memset(%struct.TYPE_11__* %25, i32 0, i32 16)
  store i32 0, i32* %24, align 4
  %47 = load i8*, i8** %15, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = call i32 @strcat(i32 %51, i8* %52)
  %54 = load i32, i32* %24, align 4
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = call i8* @strlen(i8* %59)
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  store i8* %60, i8** %64, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = call i8* @strlen(i8* %65)
  %67 = load i32, i32* %24, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr i8, i8* %66, i64 %68
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %24, align 4
  br label %71

71:                                               ; preds = %49, %45
  %72 = load i8*, i8** %16, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %96

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = call i32 @strcat(i32 %76, i8* %77)
  %79 = load i32, i32* %24, align 4
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i64 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = call i8* @strlen(i8* %84)
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  store i8* %85, i8** %89, align 8
  %90 = load i8*, i8** %16, align 8
  %91 = call i8* @strlen(i8* %90)
  %92 = load i32, i32* %24, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr i8, i8* %91, i64 %93
  %95 = ptrtoint i8* %94 to i32
  store i32 %95, i32* %24, align 4
  br label %96

96:                                               ; preds = %74, %71
  %97 = load i8*, i8** %17, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %121

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i8*, i8** %17, align 8
  %103 = call i32 @strcat(i32 %101, i8* %102)
  %104 = load i32, i32* %24, align 4
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 2
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 8
  %109 = load i8*, i8** %17, align 8
  %110 = call i8* @strlen(i8* %109)
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i64 2
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  store i8* %110, i8** %114, align 8
  %115 = load i8*, i8** %17, align 8
  %116 = call i8* @strlen(i8* %115)
  %117 = load i32, i32* %24, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr i8, i8* %116, i64 %118
  %120 = ptrtoint i8* %119 to i32
  store i32 %120, i32* %24, align 4
  br label %121

121:                                              ; preds = %99, %96
  %122 = load i8*, i8** %18, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %146

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %18, align 8
  %128 = call i32 @strcat(i32 %126, i8* %127)
  %129 = load i32, i32* %24, align 4
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i64 3
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  store i32 %129, i32* %133, align 8
  %134 = load i8*, i8** %18, align 8
  %135 = call i8* @strlen(i8* %134)
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i64 3
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  store i8* %135, i8** %139, align 8
  %140 = load i8*, i8** %18, align 8
  %141 = call i8* @strlen(i8* %140)
  %142 = load i32, i32* %24, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr i8, i8* %141, i64 %143
  %145 = ptrtoint i8* %144 to i32
  store i32 %145, i32* %24, align 4
  br label %146

146:                                              ; preds = %124, %121
  %147 = load i8*, i8** %19, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %171

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i8*, i8** %19, align 8
  %153 = call i32 @strcat(i32 %151, i8* %152)
  %154 = load i32, i32* %24, align 4
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i64 4
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  store i32 %154, i32* %158, align 8
  %159 = load i8*, i8** %19, align 8
  %160 = call i8* @strlen(i8* %159)
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i64 4
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  store i8* %160, i8** %164, align 8
  %165 = load i8*, i8** %19, align 8
  %166 = call i8* @strlen(i8* %165)
  %167 = load i32, i32* %24, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr i8, i8* %166, i64 %168
  %170 = ptrtoint i8* %169 to i32
  store i32 %170, i32* %24, align 4
  br label %171

171:                                              ; preds = %149, %146
  %172 = load i8*, i8** %20, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %196

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i8*, i8** %20, align 8
  %178 = call i32 @strcat(i32 %176, i8* %177)
  %179 = load i32, i32* %24, align 4
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i64 5
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  store i32 %179, i32* %183, align 8
  %184 = load i8*, i8** %20, align 8
  %185 = call i8* @strlen(i8* %184)
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i64 5
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 1
  store i8* %185, i8** %189, align 8
  %190 = load i8*, i8** %20, align 8
  %191 = call i8* @strlen(i8* %190)
  %192 = load i32, i32* %24, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr i8, i8* %191, i64 %193
  %195 = ptrtoint i8* %194 to i32
  store i32 %195, i32* %24, align 4
  br label %196

196:                                              ; preds = %174, %171
  %197 = load i8*, i8** %21, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %221

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i8*, i8** %21, align 8
  %203 = call i32 @strcat(i32 %201, i8* %202)
  %204 = load i32, i32* %24, align 4
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i64 6
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  store i32 %204, i32* %208, align 8
  %209 = load i8*, i8** %21, align 8
  %210 = call i8* @strlen(i8* %209)
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i64 6
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  store i8* %210, i8** %214, align 8
  %215 = load i8*, i8** %21, align 8
  %216 = call i8* @strlen(i8* %215)
  %217 = load i32, i32* %24, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr i8, i8* %216, i64 %218
  %220 = ptrtoint i8* %219 to i32
  store i32 %220, i32* %24, align 4
  br label %221

221:                                              ; preds = %199, %196
  %222 = load i8*, i8** %22, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %240

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = load i8*, i8** %22, align 8
  %228 = call i32 @strcat(i32 %226, i8* %227)
  %229 = load i32, i32* %24, align 4
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i64 7
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  store i32 %229, i32* %233, align 8
  %234 = load i8*, i8** %22, align 8
  %235 = call i8* @strlen(i8* %234)
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i64 7
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 1
  store i8* %235, i8** %239, align 8
  br label %240

240:                                              ; preds = %224, %221
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %242 = load i8*, i8** %23, align 8
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* @qfalse, align 4
  %245 = call i32 @BotConstructChatMessage(%struct.TYPE_12__* %241, i8* %242, i32 %243, %struct.TYPE_11__* %25, i32 0, i32 %244)
  br label %246

246:                                              ; preds = %240, %44, %37, %31
  ret void
}

declare dso_local %struct.TYPE_12__* @BotChatStateFromHandle(i32) #1

declare dso_local i8* @BotChooseInitialChatMessage(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @strcat(i32, i8*) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @BotConstructChatMessage(%struct.TYPE_12__*, i8*, i32, %struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
