; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__readdir.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, i8*, i32, %struct.TYPE_16__, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { i32*, i32 }
%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_15__ = type { i32 }

@UV_FS_FREE_PTR = common dso_local global i32 0, align 4
@ERROR_NO_MORE_FILES = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@UV__DT_DIR = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_REPARSE_POINT = common dso_local global i32 0, align 4
@UV__DT_LINK = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DEVICE = common dso_local global i32 0, align 4
@UV__DT_CHAR = common dso_local global i32 0, align 4
@UV__DT_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fs__readdir(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %10 = load i32, i32* @UV_FS_FREE_PTR, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %3, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %4, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 16
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(%struct.TYPE_13__* %21, i32 0, i32 %27)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 3
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %7, align 8
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %136, %83, %1
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %148

37:                                               ; preds = %31
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %47 = call i64 @FindNextFileW(i32 %45, %struct.TYPE_16__* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = call i64 (...) @GetLastError()
  %51 = load i64, i64* @ERROR_NO_MORE_FILES, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %148

54:                                               ; preds = %49
  br label %152

55:                                               ; preds = %42, %37
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 46
  br i1 %61, label %62, label %87

62:                                               ; preds = %55
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %62
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 46
  br i1 %75, label %76, label %87

76:                                               ; preds = %69
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76, %62
  %84 = load i8*, i8** @TRUE, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  br label %31

87:                                               ; preds = %76, %69, %55
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = bitcast i32** %89 to i32*
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = bitcast i32** %95 to i8**
  %97 = call i32 @uv__convert_utf16_to_utf8(i32* %90, i32 -1, i8** %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %87
  br label %152

101:                                              ; preds = %87
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32, i32* @UV__DT_DIR, align 4
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  store i32 %109, i32* %110, align 4
  br label %136

111:                                              ; preds = %101
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @FILE_ATTRIBUTE_REPARSE_POINT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i32, i32* @UV__DT_LINK, align 4
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  store i32 %119, i32* %120, align 4
  br label %135

121:                                              ; preds = %111
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @FILE_ATTRIBUTE_DEVICE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load i32, i32* @UV__DT_CHAR, align 4
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  store i32 %129, i32* %130, align 4
  br label %134

131:                                              ; preds = %121
  %132 = load i32, i32* @UV__DT_FILE, align 4
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134, %118
  br label %136

136:                                              ; preds = %135, %108
  %137 = call i32 @uv__fs_get_dirent_type(%struct.TYPE_15__* %5)
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %139 = load i32, i32* %6, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  store i32 %137, i32* %142, align 8
  %143 = load i8*, i8** @TRUE, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  %146 = load i32, i32* %6, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %6, align 4
  br label %31

148:                                              ; preds = %53, %31
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @SET_REQ_RESULT(%struct.TYPE_12__* %149, i32 %150)
  br label %177

152:                                              ; preds = %100, %54
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %154 = call i64 (...) @GetLastError()
  %155 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_12__* %153, i64 %154)
  store i32 0, i32* %8, align 4
  br label %156

156:                                              ; preds = %174, %152
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %6, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %160, label %177

160:                                              ; preds = %156
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %162 = load i32, i32* %8, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = bitcast i32* %166 to i8*
  %168 = call i32 @uv__free(i8* %167)
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %170 = load i32, i32* %8, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  store i32* null, i32** %173, align 8
  br label %174

174:                                              ; preds = %160
  %175 = load i32, i32* %8, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %156

177:                                              ; preds = %148, %156
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @FindNextFileW(i32, %struct.TYPE_16__*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @uv__convert_utf16_to_utf8(i32*, i32, i8**) #1

declare dso_local i32 @uv__fs_get_dirent_type(%struct.TYPE_15__*) #1

declare dso_local i32 @SET_REQ_RESULT(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @uv__free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
