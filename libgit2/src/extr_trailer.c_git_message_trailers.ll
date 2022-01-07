; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_trailer.c_git_message_trailers.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_trailer.c_git_message_trailers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i8*, i32, i32 }
%struct.TYPE_9__ = type { i8*, i8* }

@GIT_ARRAY_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@TRAILER_SEPARATORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_message_trailers(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 131, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %15 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_ARRAY_INIT to i8*), i64 8, i1 false)
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @extract_trailer_block(i8* %16, i64* %12)
  store i8* %17, i8** %13, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %192

21:                                               ; preds = %2
  %22 = load i8*, i8** %13, align 8
  store i8* %22, i8** %8, align 8
  br label %23

23:                                               ; preds = %178, %21
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %178 [
    i32 131, label %25
    i32 134, label %34
    i32 133, label %76
    i32 132, label %104
    i32 130, label %125
    i32 128, label %141
    i32 129, label %152
    i32 135, label %163
  ]

25:                                               ; preds = %23
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %179

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  store i8* %32, i8** %9, align 8
  %33 = call i32 @GOTO(i32 134)
  br label %34

34:                                               ; preds = %23, %31
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %179

40:                                               ; preds = %34
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @isalnum(i8 signext %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 45
  br i1 %49, label %50, label %52

50:                                               ; preds = %45, %40
  %51 = call i32 @NEXT(i32 134)
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i8*, i8** %8, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 32
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 9
  br i1 %61, label %62, label %65

62:                                               ; preds = %57, %52
  %63 = load i8*, i8** %8, align 8
  store i8 0, i8* %63, align 1
  %64 = call i32 @NEXT(i32 133)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load i32, i32* @TRAILER_SEPARATORS, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @strchr(i32 %66, i8 signext %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i8*, i8** %8, align 8
  store i8 0, i8* %72, align 1
  %73 = call i32 @NEXT(i32 132)
  br label %74

74:                                               ; preds = %71, %65
  %75 = call i32 @GOTO(i32 135)
  br label %76

76:                                               ; preds = %23, %74
  %77 = load i8*, i8** %8, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %179

82:                                               ; preds = %76
  %83 = load i8*, i8** %8, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 32
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load i8*, i8** %8, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 9
  br i1 %91, label %92, label %94

92:                                               ; preds = %87, %82
  %93 = call i32 @NEXT(i32 133)
  br label %94

94:                                               ; preds = %92, %87
  %95 = load i32, i32* @TRAILER_SEPARATORS, align 4
  %96 = load i8*, i8** %8, align 8
  %97 = load i8, i8* %96, align 1
  %98 = call i32 @strchr(i32 %95, i8 signext %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = call i32 @NEXT(i32 132)
  br label %102

102:                                              ; preds = %100, %94
  %103 = call i32 @GOTO(i32 135)
  br label %104

104:                                              ; preds = %23, %102
  %105 = load i8*, i8** %8, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %179

110:                                              ; preds = %104
  %111 = load i8*, i8** %8, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 32
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load i8*, i8** %8, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 9
  br i1 %119, label %120, label %122

120:                                              ; preds = %115, %110
  %121 = call i32 @NEXT(i32 132)
  br label %122

122:                                              ; preds = %120, %115
  %123 = load i8*, i8** %8, align 8
  store i8* %123, i8** %10, align 8
  %124 = call i32 @NEXT(i32 130)
  br label %125

125:                                              ; preds = %23, %122
  %126 = load i8*, i8** %8, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = call i32 @GOTO(i32 129)
  br label %132

132:                                              ; preds = %130, %125
  %133 = load i8*, i8** %8, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 10
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = call i32 @NEXT(i32 128)
  br label %139

139:                                              ; preds = %137, %132
  %140 = call i32 @NEXT(i32 130)
  br label %141

141:                                              ; preds = %23, %139
  %142 = load i8*, i8** %8, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 32
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = call i32 @NEXT(i32 130)
  br label %148

148:                                              ; preds = %146, %141
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 -1
  store i8 0, i8* %150, align 1
  %151 = call i32 @GOTO(i32 129)
  br label %152

152:                                              ; preds = %23, %148
  %153 = bitcast %struct.TYPE_10__* %11 to i64*
  %154 = load i64, i64* %153, align 4
  %155 = call %struct.TYPE_9__* @git_array_alloc(i64 %154)
  store %struct.TYPE_9__* %155, %struct.TYPE_9__** %14, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  store i8* %156, i8** %158, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %162 = call i32 @GOTO(i32 131)
  br label %163

163:                                              ; preds = %23, %152
  %164 = load i8*, i8** %8, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %179

169:                                              ; preds = %163
  %170 = load i8*, i8** %8, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 10
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = call i32 @NEXT(i32 131)
  br label %176

176:                                              ; preds = %174, %169
  %177 = call i32 @NEXT(i32 135)
  br label %178

178:                                              ; preds = %176, %23
  br label %23

179:                                              ; preds = %168, %109, %81, %39, %30
  %180 = load i8*, i8** %13, align 8
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  store i8* %180, i8** %182, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 4
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* %7, align 4
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %179, %20
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @extract_trailer_block(i8*, i64*) #2

declare dso_local i32 @GOTO(i32) #2

declare dso_local i32 @isalnum(i8 signext) #2

declare dso_local i32 @NEXT(i32) #2

declare dso_local i32 @strchr(i32, i8 signext) #2

declare dso_local %struct.TYPE_9__* @git_array_alloc(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
