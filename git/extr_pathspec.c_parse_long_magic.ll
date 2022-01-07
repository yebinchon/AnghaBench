; ModuleID = '/home/carl/AnghaBench/git/extr_pathspec.c_parse_long_magic.c'
source_filename = "/home/carl/AnghaBench/git/extr_pathspec.c_parse_long_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.pathspec_item = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c",)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"prefix:\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"invalid parameter for pathspec magic 'prefix'\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"attr:\00", align 1
@PATHSPEC_ATTR = common dso_local global i32 0, align 4
@pathspec_magic = common dso_local global %struct.TYPE_3__* null, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"Invalid pathspec magic '%.*s' in '%s'\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Missing ')' at the end of pathspec magic in '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, %struct.pathspec_item*, i8*)* @parse_long_magic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_long_magic(i32* %0, i32* %1, %struct.pathspec_item* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pathspec_item*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.pathspec_item* %2, %struct.pathspec_item** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 2
  store i8* %16, i8** %9, align 8
  br label %17

17:                                               ; preds = %144, %4
  %18 = load i8*, i8** %9, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i8*, i8** %9, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 41
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ false, %17 ], [ %26, %22 ]
  br i1 %28, label %29, label %146

29:                                               ; preds = %27
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 @strcspn_escaped(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %31, i64* %11, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %11, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 44
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load i8*, i8** %9, align 8
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8* %42, i8** %10, align 8
  br label %47

43:                                               ; preds = %29
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %10, align 8
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i64, i64* %11, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %144

51:                                               ; preds = %47
  %52 = load i8*, i8** %9, align 8
  %53 = call i64 @starts_with(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 7
  %58 = call i32 @strtol(i8* %57, i8** %13, i32 10)
  %59 = load i32*, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i8*, i8** %13, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %69 = call i32 (i32, ...) @die(i32 %68)
  br label %70

70:                                               ; preds = %67, %55
  br label %144

71:                                               ; preds = %51
  %72 = load i8*, i8** %9, align 8
  %73 = call i64 @starts_with(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 5
  %78 = load i64, i64* %11, align 8
  %79 = sub i64 %78, 5
  %80 = call i8* @xmemdupz(i8* %77, i64 %79)
  store i8* %80, i8** %14, align 8
  %81 = load %struct.pathspec_item*, %struct.pathspec_item** %7, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = call i32 @parse_pathspec_attr_match(%struct.pathspec_item* %81, i8* %82)
  %84 = load i32, i32* @PATHSPEC_ATTR, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  %88 = load i8*, i8** %14, align 8
  %89 = call i32 @free(i8* %88)
  br label %144

90:                                               ; preds = %71
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %128, %90
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pathspec_magic, align 8
  %94 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %93)
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %131

96:                                               ; preds = %91
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pathspec_magic, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @strlen(i32 %102)
  %104 = load i64, i64* %11, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %127

106:                                              ; preds = %96
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pathspec_magic, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %9, align 8
  %114 = load i64, i64* %11, align 8
  %115 = call i32 @strncmp(i32 %112, i8* %113, i64 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %106
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pathspec_magic, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 4
  br label %131

127:                                              ; preds = %106, %96
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %91

131:                                              ; preds = %117, %91
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pathspec_magic, align 8
  %133 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %132)
  %134 = load i32, i32* %12, align 4
  %135 = icmp sle i32 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %138 = load i64, i64* %11, align 8
  %139 = trunc i64 %138 to i32
  %140 = load i8*, i8** %9, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = call i32 (i32, ...) @die(i32 %137, i32 %139, i8* %140, i8* %141)
  br label %143

143:                                              ; preds = %136, %131
  br label %144

144:                                              ; preds = %143, %75, %70, %50
  %145 = load i8*, i8** %10, align 8
  store i8* %145, i8** %9, align 8
  br label %17

146:                                              ; preds = %27
  %147 = load i8*, i8** %9, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 41
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %153 = load i8*, i8** %8, align 8
  %154 = call i32 (i32, ...) @die(i32 %152, i8* %153)
  br label %155

155:                                              ; preds = %151, %146
  %156 = load i8*, i8** %9, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %9, align 8
  %158 = load i8*, i8** %9, align 8
  ret i8* %158
}

declare dso_local i64 @strcspn_escaped(i8*, i8*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @xmemdupz(i8*, i64) #1

declare dso_local i32 @parse_pathspec_attr_match(%struct.pathspec_item*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
