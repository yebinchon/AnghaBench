; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_rev-list.c_revwalk_parseopts.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_rev-list.c_revwalk_parseopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_SORT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"--topo-order\00", align 1
@GIT_SORT_TOPOLOGICAL = common dso_local global i32 0, align 4
@GIT_SORT_REVERSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"--date-order\00", align 1
@GIT_SORT_TIME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"--reverse\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"--not\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i8**)* @revwalk_parseopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @revwalk_parseopts(i32* %0, i32* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %14 = load i32, i32* @GIT_SORT_NONE, align 4
  store i32 %14, i32* %13, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %162, %4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %165

19:                                               ; preds = %15
  %20 = load i8**, i8*** %9, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @GIT_SORT_TOPOLOGICAL, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @GIT_SORT_REVERSE, align 4
  %31 = and i32 %29, %30
  %32 = or i32 %28, %31
  store i32 %32, i32* %13, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @git_revwalk_sorting(i32* %33, i32 %34)
  br label %161

36:                                               ; preds = %19
  %37 = load i8**, i8*** %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @GIT_SORT_TIME, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @GIT_SORT_REVERSE, align 4
  %48 = and i32 %46, %47
  %49 = or i32 %45, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @git_revwalk_sorting(i32* %50, i32 %51)
  br label %160

53:                                               ; preds = %36
  %54 = load i8**, i8*** %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @GIT_SORT_REVERSE, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @GIT_SORT_REVERSE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @GIT_SORT_REVERSE, align 4
  br label %73

73:                                               ; preds = %71, %70
  %74 = phi i32 [ 0, %70 ], [ %72, %71 ]
  %75 = or i32 %65, %74
  store i32 %75, i32* %13, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @git_revwalk_sorting(i32* %76, i32 %77)
  br label %159

79:                                               ; preds = %53
  %80 = load i8**, i8*** %9, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %10, align 4
  br label %158

92:                                               ; preds = %79
  %93 = load i8**, i8*** %9, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 94
  br i1 %101, label %102, label %120

102:                                              ; preds = %92
  %103 = load i32*, i32** %6, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = load i8**, i8*** %9, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i32 @push_spec(i32* %103, i32* %104, i8* %110, i32 %114)
  store i32 %115, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %102
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %5, align 4
  br label %166

119:                                              ; preds = %102
  br label %157

120:                                              ; preds = %92
  %121 = load i8**, i8*** %9, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @strstr(i8* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %120
  %129 = load i32*, i32** %6, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = load i8**, i8*** %9, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @push_range(i32* %129, i32* %130, i8* %135, i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %128
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %5, align 4
  br label %166

141:                                              ; preds = %128
  br label %156

142:                                              ; preds = %120
  %143 = load i32*, i32** %6, align 8
  %144 = load i32*, i32** %7, align 8
  %145 = load i8**, i8*** %9, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @push_spec(i32* %143, i32* %144, i8* %149, i32 %150)
  store i32 %151, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %142
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %5, align 4
  br label %166

155:                                              ; preds = %142
  br label %156

156:                                              ; preds = %155, %141
  br label %157

157:                                              ; preds = %156, %119
  br label %158

158:                                              ; preds = %157, %87
  br label %159

159:                                              ; preds = %158, %73
  br label %160

160:                                              ; preds = %159, %44
  br label %161

161:                                              ; preds = %160, %27
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %15

165:                                              ; preds = %15
  store i32 0, i32* %5, align 4
  br label %166

166:                                              ; preds = %165, %153, %139, %117
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_revwalk_sorting(i32*, i32) #1

declare dso_local i32 @push_spec(i32*, i32*, i8*, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @push_range(i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
