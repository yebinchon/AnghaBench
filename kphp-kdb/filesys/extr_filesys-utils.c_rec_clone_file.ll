; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_rec_clone_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_rec_clone_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i8* }
%struct.TYPE_4__ = type { i8*, %struct.stat, %struct.TYPE_4__* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"symlink (%s, %s) failed. %m\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"mkdir (%s, %d) fail. %m\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"link (%s, %s) fail. %m\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, %struct.stat*)* @rec_clone_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rec_clone_file(i8* %0, i8* %1, i8* %2, %struct.stat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.stat* %3, %struct.stat** %9, align 8
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @PATH_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %25 = load %struct.stat*, %struct.stat** %9, align 8
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @S_ISLNK(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %70

30:                                               ; preds = %4
  %31 = load i32, i32* @PATH_MAX, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @snprintf(i8* %21, i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %33)
  %35 = load i32, i32* @PATH_MAX, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %175

38:                                               ; preds = %30
  %39 = load i32, i32* @PATH_MAX, align 4
  %40 = call i32 @readlink(i8* %21, i8* %24, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @PATH_MAX, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %38
  store i32 -4, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %175

48:                                               ; preds = %43
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %24, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i32, i32* @PATH_MAX, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @snprintf(i8* %21, i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %53, i8* %54)
  %56 = load i32, i32* @PATH_MAX, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %175

59:                                               ; preds = %48
  %60 = call i64 @symlink(i8* %24, i8* %21)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %24, i8* %21)
  store i32 -5, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %175

64:                                               ; preds = %59
  %65 = load %struct.stat*, %struct.stat** %9, align 8
  %66 = call i64 @lcopy_attrs(i8* %21, %struct.stat* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 -6, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %175

69:                                               ; preds = %64
  br label %174

70:                                               ; preds = %4
  %71 = load %struct.stat*, %struct.stat** %9, align 8
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @S_ISDIR(i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %152

76:                                               ; preds = %70
  %77 = load i32, i32* @PATH_MAX, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @snprintf(i8* %21, i32 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %78, i8* %79)
  %81 = load i32, i32* @PATH_MAX, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %175

84:                                               ; preds = %76
  %85 = load %struct.stat*, %struct.stat** %9, align 8
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @mkdir(i8* %21, i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.stat*, %struct.stat** %9, align 8
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %21, i8* %93)
  store i32 -2, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %175

95:                                               ; preds = %84
  %96 = load i32, i32* @PATH_MAX, align 4
  %97 = load i8*, i8** %6, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @snprintf(i8* %21, i32 %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %97, i8* %98)
  %100 = load i32, i32* @PATH_MAX, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %175

103:                                              ; preds = %95
  %104 = call i32 @getdir(i8* %21, %struct.TYPE_4__** %15, i32 0, i32 1)
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %17, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 -2, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %175

108:                                              ; preds = %103
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %109, %struct.TYPE_4__** %16, align 8
  br label %110

110:                                              ; preds = %132, %108
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %112 = icmp ne %struct.TYPE_4__* %111, null
  br i1 %112, label %113, label %136

113:                                              ; preds = %110
  %114 = load i32, i32* @PATH_MAX, align 4
  %115 = load i8*, i8** %8, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @snprintf(i8* %21, i32 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %115, i8* %118)
  %120 = load i32, i32* @PATH_MAX, align 4
  %121 = icmp sge i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %175

123:                                              ; preds = %113
  %124 = load i8*, i8** %6, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = call i32 @rec_clone_file(i8* %124, i8* %125, i8* %21, %struct.stat* %127)
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  store i32 -3, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %175

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  store %struct.TYPE_4__* %135, %struct.TYPE_4__** %16, align 8
  br label %110

136:                                              ; preds = %110
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %138 = call i32 @free_filelist(%struct.TYPE_4__* %137)
  %139 = load i32, i32* @PATH_MAX, align 4
  %140 = load i8*, i8** %7, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = call i32 @snprintf(i8* %21, i32 %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %140, i8* %141)
  %143 = load i32, i32* @PATH_MAX, align 4
  %144 = icmp sge i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %175

146:                                              ; preds = %136
  %147 = load %struct.stat*, %struct.stat** %9, align 8
  %148 = call i64 @lcopy_attrs(i8* %21, %struct.stat* %147)
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store i32 -7, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %175

151:                                              ; preds = %146
  br label %173

152:                                              ; preds = %70
  %153 = load i32, i32* @PATH_MAX, align 4
  %154 = load i8*, i8** %6, align 8
  %155 = load i8*, i8** %8, align 8
  %156 = call i32 @snprintf(i8* %21, i32 %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %154, i8* %155)
  %157 = load i32, i32* @PATH_MAX, align 4
  %158 = icmp sge i32 %156, %157
  br i1 %158, label %166, label %159

159:                                              ; preds = %152
  %160 = load i32, i32* @PATH_MAX, align 4
  %161 = load i8*, i8** %7, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = call i32 @snprintf(i8* %24, i32 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %161, i8* %162)
  %164 = load i32, i32* @PATH_MAX, align 4
  %165 = icmp sge i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %159, %152
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %175

167:                                              ; preds = %159
  %168 = call i64 @link(i8* %21, i8* %24)
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %21, i8* %24)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %175

172:                                              ; preds = %167
  br label %173

173:                                              ; preds = %172, %151
  br label %174

174:                                              ; preds = %173, %69
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %175

175:                                              ; preds = %174, %170, %166, %150, %145, %130, %122, %107, %102, %90, %83, %68, %62, %58, %47, %37
  %176 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %176)
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @S_ISLNK(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @readlink(i8*, i8*, i32) #2

declare dso_local i64 @symlink(i8*, i8*) #2

declare dso_local i32 @vkprintf(i32, i8*, i8*, i8*) #2

declare dso_local i64 @lcopy_attrs(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISDIR(i8*) #2

declare dso_local i64 @mkdir(i8*, i8*) #2

declare dso_local i32 @getdir(i8*, %struct.TYPE_4__**, i32, i32) #2

declare dso_local i32 @free_filelist(%struct.TYPE_4__*) #2

declare dso_local i64 @link(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
