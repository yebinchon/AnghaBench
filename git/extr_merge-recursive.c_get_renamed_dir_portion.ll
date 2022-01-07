; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_get_renamed_dir_portion.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_get_renamed_dir_portion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8**, i8**)* @get_renamed_dir_portion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_renamed_dir_portion(i8* %0, i8* %1, i8** %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %11 = load i8**, i8*** %7, align 8
  store i8* null, i8** %11, align 8
  %12 = load i8**, i8*** %8, align 8
  store i8* null, i8** %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @strrchr(i8* %13, i8 signext 47)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @strrchr(i8* %15, i8 signext 47)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %126

20:                                               ; preds = %4
  %21 = load i8*, i8** %10, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = call i8* @xstrndup(i8* %24, i32 %30)
  %32 = load i8**, i8*** %7, align 8
  store i8* %31, i8** %32, align 8
  %33 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %34 = load i8**, i8*** %8, align 8
  store i8* %33, i8** %34, align 8
  br label %126

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %56, %35
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 -1
  store i8* %38, i8** %10, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 -1
  store i8* %42, i8** %9, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %40, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %36
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = icmp ne i8* %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = icmp ne i8* %51, %52
  br label %54

54:                                               ; preds = %50, %46, %36
  %55 = phi i1 [ false, %46 ], [ false, %36 ], [ %53, %50 ]
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  br label %36

57:                                               ; preds = %54
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load i8*, i8** %10, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i8*, i8** %9, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8*, i8** %10, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %126

74:                                               ; preds = %65, %61, %57
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = icmp eq i8* %75, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %74
  %79 = load i8*, i8** %9, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = icmp ne i8* %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 -1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 47
  br i1 %87, label %88, label %101

88:                                               ; preds = %82
  %89 = load i8*, i8** %5, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 -1
  store i8* %91, i8** %9, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = call i8* @xstrndup(i8* %89, i32 %96)
  %98 = load i8**, i8*** %7, align 8
  store i8* %97, i8** %98, align 8
  %99 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %100 = load i8**, i8*** %8, align 8
  store i8* %99, i8** %100, align 8
  br label %126

101:                                              ; preds = %82, %78, %74
  %102 = load i8*, i8** %9, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %9, align 8
  %104 = call i8* @strchr(i8* %103, i8 signext 47)
  store i8* %104, i8** %9, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %10, align 8
  %107 = call i8* @strchr(i8* %106, i8 signext 47)
  store i8* %107, i8** %10, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = trunc i64 %113 to i32
  %115 = call i8* @xstrndup(i8* %108, i32 %114)
  %116 = load i8**, i8*** %7, align 8
  store i8* %115, i8** %116, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = trunc i64 %122 to i32
  %124 = call i8* @xstrndup(i8* %117, i32 %123)
  %125 = load i8**, i8*** %8, align 8
  store i8* %124, i8** %125, align 8
  br label %126

126:                                              ; preds = %101, %88, %73, %23, %19
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @xstrndup(i8*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
