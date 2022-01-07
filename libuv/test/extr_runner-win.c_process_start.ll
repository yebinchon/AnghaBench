; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_runner-win.c_process_start.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_runner-win.c_process_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i64, i64, i64, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i32] [i32 117, i32 118, i32 0], align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_TEMPORARY = common dso_local global i32 0, align 4
@FILE_FLAG_DELETE_ON_CLOSE = common dso_local global i32 0, align 4
@HANDLE_FLAG_INHERIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"nul\00", align 1
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i32] [i32 34, i32 37, i32 115, i32 34, i32 32, i32 37, i32 83, i32 32, i32 37, i32 83, i32 0], align 4
@.str.3 = private unnamed_addr constant [8 x i32] [i32 34, i32 37, i32 115, i32 34, i32 32, i32 37, i32 83, i32 0], align 4
@STARTF_USESTDHANDLES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_start(i8* %0, i8* %1, %struct.TYPE_7__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_8__, align 8
  %18 = alloca %struct.TYPE_9__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %22, i64* %11, align 8
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  %30 = load i32, i32* @MAX_PATH, align 4
  %31 = add nsw i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %15, align 8
  %34 = load i32, i32* @MAX_PATH, align 4
  %35 = mul nsw i32 %34, 2
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %16, align 8
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %4
  %41 = call i32 @uv_sleep(i32 250)
  br label %42

42:                                               ; preds = %40, %4
  %43 = mul nuw i64 4, %24
  %44 = udiv i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i64 @GetTempPathW(i32 %45, i32* %26)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %166

49:                                               ; preds = %42
  %50 = call i64 @GetTempFileNameW(i32* %26, i8* bitcast ([3 x i32]* @.str to i8*), i32 0, i32* %29)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %166

53:                                               ; preds = %49
  %54 = load i32, i32* @GENERIC_READ, align 4
  %55 = load i32, i32* @GENERIC_WRITE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @CREATE_ALWAYS, align 4
  %58 = load i32, i32* @FILE_ATTRIBUTE_TEMPORARY, align 4
  %59 = load i32, i32* @FILE_FLAG_DELETE_ON_CLOSE, align 4
  %60 = or i32 %58, %59
  %61 = call i64 @CreateFileW(i32* %29, i32 %56, i32 0, i32* null, i32 %57, i32 %60, i32* null)
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %166

66:                                               ; preds = %53
  %67 = load i64, i64* %10, align 8
  %68 = load i32, i32* @HANDLE_FLAG_INHERIT, align 4
  %69 = load i32, i32* @HANDLE_FLAG_INHERIT, align 4
  %70 = call i32 @SetHandleInformation(i64 %67, i32 %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  br label %166

73:                                               ; preds = %66
  %74 = load i32, i32* @GENERIC_READ, align 4
  %75 = load i32, i32* @FILE_SHARE_READ, align 4
  %76 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @OPEN_EXISTING, align 4
  %79 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %80 = call i64 @CreateFileA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %77, i32* null, i32 %78, i32 %79, i32* null)
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %166

85:                                               ; preds = %73
  %86 = load i64, i64* %11, align 8
  %87 = load i32, i32* @HANDLE_FLAG_INHERIT, align 4
  %88 = load i32, i32* @HANDLE_FLAG_INHERIT, align 4
  %89 = call i32 @SetHandleInformation(i64 %86, i32 %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  br label %166

92:                                               ; preds = %85
  %93 = mul nuw i64 4, %32
  %94 = udiv i64 %93, 4
  %95 = trunc i64 %94 to i32
  %96 = call i32 @GetModuleFileNameW(i32* null, i32* %33, i32 %95)
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %19, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %19, align 4
  %101 = sext i32 %100 to i64
  %102 = mul nuw i64 4, %32
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %99, %92
  br label %166

105:                                              ; preds = %99
  %106 = load i8*, i8** %7, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = mul nuw i64 4, %36
  %110 = udiv i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = load i8*, i8** %6, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = call i64 (i32*, i32, i8*, i32*, i8*, ...) @_snwprintf(i32* %37, i32 %111, i8* bitcast ([11 x i32]* @.str.2 to i8*), i32* %33, i8* %112, i8* %113)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %166

117:                                              ; preds = %108
  br label %127

118:                                              ; preds = %105
  %119 = mul nuw i64 4, %36
  %120 = udiv i64 %119, 4
  %121 = trunc i64 %120 to i32
  %122 = load i8*, i8** %6, align 8
  %123 = call i64 (i32*, i32, i8*, i32*, i8*, ...) @_snwprintf(i32* %37, i32 %121, i8* bitcast ([8 x i32]* @.str.3 to i8*), i32* %33, i8* %122)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %166

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126, %117
  %128 = bitcast %struct.TYPE_8__* %17 to i8*
  %129 = call i32 @memset(i8* %128, i32 0, i32 40)
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 40, i32* %130, align 8
  %131 = load i32, i32* @STARTF_USESTDHANDLES, align 4
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  store i32 %131, i32* %132, align 8
  %133 = load i64, i64* %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  store i64 %133, i64* %134, align 8
  %135 = load i64, i64* %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  store i64 %135, i64* %136, align 8
  %137 = load i64, i64* %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i64 %137, i64* %138, align 8
  %139 = load i32, i32* @TRUE, align 4
  %140 = call i32 @CreateProcessW(i32* %33, i32* %37, i32* null, i32* null, i32 %139, i32 0, i32* null, i32* null, %struct.TYPE_8__* %17, %struct.TYPE_9__* %18)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %127
  br label %166

143:                                              ; preds = %127
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @CloseHandle(i64 %145)
  %147 = load i64, i64* %11, align 8
  %148 = load i32, i32* @HANDLE_FLAG_INHERIT, align 4
  %149 = call i32 @SetHandleInformation(i64 %147, i32 %148, i32 0)
  %150 = load i64, i64* %10, align 8
  %151 = load i32, i32* @HANDLE_FLAG_INHERIT, align 4
  %152 = call i32 @SetHandleInformation(i64 %150, i32 %151, i32 0)
  %153 = load i64, i64* %11, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 3
  store i64 %153, i64* %155, align 8
  %156 = load i64, i64* %10, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  store i64 %156, i64* %158, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %181

166:                                              ; preds = %142, %125, %116, %104, %91, %84, %72, %65, %52, %48
  %167 = load i64, i64* %10, align 8
  %168 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load i64, i64* %10, align 8
  %172 = call i32 @CloseHandle(i64 %171)
  br label %173

173:                                              ; preds = %170, %166
  %174 = load i64, i64* %11, align 8
  %175 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load i64, i64* %11, align 8
  %179 = call i32 @CloseHandle(i64 %178)
  br label %180

180:                                              ; preds = %177, %173
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %181

181:                                              ; preds = %180, %143
  %182 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %182)
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uv_sleep(i32) #2

declare dso_local i64 @GetTempPathW(i32, i32*) #2

declare dso_local i64 @GetTempFileNameW(i32*, i8*, i32, i32*) #2

declare dso_local i64 @CreateFileW(i32*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @SetHandleInformation(i64, i32, i32) #2

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @GetModuleFileNameW(i32*, i32*, i32) #2

declare dso_local i64 @_snwprintf(i32*, i32, i8*, i32*, i8*, ...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @CreateProcessW(i32*, i32*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_8__*, %struct.TYPE_9__*) #2

declare dso_local i32 @CloseHandle(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
