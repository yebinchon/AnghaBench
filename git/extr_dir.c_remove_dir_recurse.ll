; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_remove_dir_recurse.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_remove_dir_recurse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.dirent = type { i32 }
%struct.object_id = type { i32 }
%struct.stat = type { i32 }

@REMOVE_DIR_EMPTY_ONLY = common dso_local global i32 0, align 4
@REMOVE_DIR_KEEP_TOPLEVEL = common dso_local global i32 0, align 4
@REMOVE_DIR_KEEP_NESTED_GIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i32, i32*)* @remove_dir_recurse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_dir_recurse(%struct.strbuf* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.object_id, align 4
  %17 = alloca %struct.stat, align 4
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @REMOVE_DIR_EMPTY_ONLY, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @REMOVE_DIR_KEEP_TOPLEVEL, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @REMOVE_DIR_KEEP_NESTED_GIT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %3
  %32 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @resolve_gitlink_ref(i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.object_id* %16)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32*, i32** %7, align 8
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %37
  store i32 0, i32* %4, align 4
  br label %182

43:                                               ; preds = %31, %3
  %44 = load i32, i32* @REMOVE_DIR_KEEP_TOPLEVEL, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32* @opendir(i32 %50)
  store i32* %51, i32** %8, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %76, label %54

54:                                               ; preds = %43
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @ENOENT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 -1, i32 0
  store i32 %62, i32* %4, align 4
  br label %182

63:                                               ; preds = %54
  %64 = load i64, i64* @errno, align 8
  %65 = load i64, i64* @EACCES, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %72 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @rmdir(i32 %73)
  store i32 %74, i32* %4, align 4
  br label %182

75:                                               ; preds = %67, %63
  store i32 -1, i32* %4, align 4
  br label %182

76:                                               ; preds = %43
  %77 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %78 = call i32 @strbuf_complete(%struct.strbuf* %77, i8 signext 47)
  %79 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %80 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %138, %123, %111, %92, %76
  %83 = load i32*, i32** %8, align 8
  %84 = call %struct.dirent* @readdir(i32* %83)
  store %struct.dirent* %84, %struct.dirent** %9, align 8
  %85 = icmp ne %struct.dirent* %84, null
  br i1 %85, label %86, label %142

86:                                               ; preds = %82
  %87 = load %struct.dirent*, %struct.dirent** %9, align 8
  %88 = getelementptr inbounds %struct.dirent, %struct.dirent* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @is_dot_or_dotdot(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %82

93:                                               ; preds = %86
  %94 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @strbuf_setlen(%struct.strbuf* %94, i32 %95)
  %97 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %98 = load %struct.dirent*, %struct.dirent** %9, align 8
  %99 = getelementptr inbounds %struct.dirent, %struct.dirent* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @strbuf_addstr(%struct.strbuf* %97, i32 %100)
  %102 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %103 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @lstat(i32 %104, %struct.stat* %17)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %93
  %108 = load i64, i64* @errno, align 8
  %109 = load i64, i64* @ENOENT, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %82

112:                                              ; preds = %107
  br label %141

113:                                              ; preds = %93
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @S_ISDIR(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @remove_dir_recurse(%struct.strbuf* %119, i32 %120, i32* %13)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %118
  br label %82

124:                                              ; preds = %118
  br label %140

125:                                              ; preds = %113
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %125
  %129 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %130 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @unlink(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i64, i64* @errno, align 8
  %136 = load i64, i64* @ENOENT, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134, %128
  br label %82

139:                                              ; preds = %134, %125
  br label %140

140:                                              ; preds = %139, %124
  br label %141

141:                                              ; preds = %140, %112
  store i32 -1, i32* %10, align 4
  br label %142

142:                                              ; preds = %141, %82
  %143 = load i32*, i32** %8, align 8
  %144 = call i32 @closedir(i32* %143)
  %145 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @strbuf_setlen(%struct.strbuf* %145, i32 %146)
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %170, label %150

150:                                              ; preds = %142
  %151 = load i32, i32* %15, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %170, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %170, label %156

156:                                              ; preds = %153
  %157 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %158 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @rmdir(i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load i64, i64* @errno, align 8
  %164 = load i64, i64* @ENOENT, align 8
  %165 = icmp eq i64 %163, %164
  br label %166

166:                                              ; preds = %162, %156
  %167 = phi i1 [ true, %156 ], [ %165, %162 ]
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 0, i32 -1
  store i32 %169, i32* %10, align 4
  br label %180

170:                                              ; preds = %153, %150, %142
  %171 = load i32*, i32** %7, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %179

173:                                              ; preds = %170
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  %178 = load i32*, i32** %7, align 8
  store i32 %177, i32* %178, align 4
  br label %179

179:                                              ; preds = %173, %170
  br label %180

180:                                              ; preds = %179, %166
  %181 = load i32, i32* %10, align 4
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %180, %75, %70, %58, %42
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @resolve_gitlink_ref(i32, i8*, %struct.object_id*) #1

declare dso_local i32* @opendir(i32) #1

declare dso_local i32 @rmdir(i32) #1

declare dso_local i32 @strbuf_complete(%struct.strbuf*, i8 signext) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @is_dot_or_dotdot(i32) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i64 @lstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
