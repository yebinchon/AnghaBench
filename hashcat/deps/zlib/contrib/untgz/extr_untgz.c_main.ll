; ModuleID = '/home/carl/AnghaBench/hashcat/deps/zlib/contrib/untgz/extr_untgz.c_main.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/zlib/contrib/untgz/extr_untgz.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prog = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"%s: Couldn't gzopen %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Unknown option\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 129, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @strrchr(i8* %12, i8 signext 92)
  store i8* %13, i8** @prog, align 8
  %14 = load i8*, i8** @prog, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %42

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @strrchr(i8* %19, i8 signext 47)
  store i8* %20, i8** @prog, align 8
  %21 = load i8*, i8** @prog, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @strrchr(i8* %26, i8 signext 58)
  store i8* %27, i8** @prog, align 8
  %28 = load i8*, i8** @prog, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** @prog, align 8
  br label %37

34:                                               ; preds = %23
  %35 = load i8*, i8** @prog, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** @prog, align 8
  br label %37

37:                                               ; preds = %34, %30
  br label %41

38:                                               ; preds = %16
  %39 = load i8*, i8** @prog, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** @prog, align 8
  br label %41

41:                                               ; preds = %38, %37
  br label %45

42:                                               ; preds = %2
  %43 = load i8*, i8** @prog, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** @prog, align 8
  br label %45

45:                                               ; preds = %42, %41
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @help(i32 0)
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  store i32 128, i32* %6, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 @help(i32 0)
  br label %65

65:                                               ; preds = %63, %58
  br label %77

66:                                               ; preds = %50
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = call i32 @help(i32 0)
  br label %76

76:                                               ; preds = %74, %66
  br label %77

77:                                               ; preds = %76, %65
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @TGZfname(i8* %82)
  store i8* %83, i8** %8, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load i8**, i8*** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @TGZnotfound(i8* %90)
  br label %92

92:                                               ; preds = %85, %77
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, 128
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = call i32 @help(i32 1)
  br label %103

103:                                              ; preds = %101, %97, %92
  %104 = load i32, i32* %6, align 4
  switch i32 %104, label %123 [
    i32 128, label %105
    i32 129, label %105
  ]

105:                                              ; preds = %103, %103
  %106 = load i8*, i8** %8, align 8
  %107 = call i32* @gzopen(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %107, i32** %9, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i32, i32* @stderr, align 4
  %112 = load i8*, i8** @prog, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @fprintf(i32 %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %112, i8* %113)
  ret i32 1

115:                                              ; preds = %105
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %4, align 4
  %120 = load i8**, i8*** %5, align 8
  %121 = call i32 @tar(i32* %116, i32 %117, i32 %118, i32 %119, i8** %120)
  %122 = call i32 @exit(i32 %121) #3
  unreachable

123:                                              ; preds = %103
  %124 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %125 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @help(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @TGZfname(i8*) #1

declare dso_local i32 @TGZnotfound(i8*) #1

declare dso_local i32* @gzopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @tar(i32*, i32, i32, i32, i8**) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
