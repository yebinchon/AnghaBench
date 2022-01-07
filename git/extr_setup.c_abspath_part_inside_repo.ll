; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_abspath_part_inside_repo.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_abspath_part_inside_repo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @abspath_part_inside_repo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abspath_part_inside_repo(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = call i8* (...) @get_git_work_tree()
  store i8* %9, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %123

13:                                               ; preds = %1
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %5, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %4, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @offset_1st_component(i8* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ule i64 %20, %21
  br i1 %22, label %23, label %75

23:                                               ; preds = %13
  %24 = load i8*, i8** %3, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @fspathncmp(i8* %24, i8* %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %75, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load i8*, i8** %3, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = sub i64 %42, %43
  %45 = call i32 @memmove(i8* %37, i8* %41, i64 %44)
  store i32 0, i32* %2, align 4
  br label %123

46:                                               ; preds = %29
  %47 = load i8*, i8** %3, align 8
  %48 = load i64, i64* %5, align 8
  %49 = sub i64 %48, 1
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 47
  br i1 %53, label %61, label %54

54:                                               ; preds = %46
  %55 = load i8*, i8** %3, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %54, %46
  %62 = load i8*, i8** %3, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = sub i64 %66, %67
  %69 = add i64 %68, 1
  %70 = call i32 @memmove(i8* %62, i8* %65, i64 %69)
  store i32 0, i32* %2, align 4
  br label %123

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %5, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %72, %23, %13
  %76 = load i8*, i8** %3, align 8
  store i8* %76, i8** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i8*, i8** %3, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %3, align 8
  br label %81

81:                                               ; preds = %113, %75
  %82 = load i8*, i8** %3, align 8
  %83 = load i8, i8* %82, align 1
  %84 = icmp ne i8 %83, 0
  br i1 %84, label %85, label %114

85:                                               ; preds = %81
  %86 = load i8*, i8** %3, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %3, align 8
  %88 = load i8*, i8** %3, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 47
  br i1 %91, label %92, label %113

92:                                               ; preds = %85
  %93 = load i8*, i8** %3, align 8
  store i8 0, i8* %93, align 1
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @real_path(i8* %94)
  %96 = load i8*, i8** %8, align 8
  %97 = call i64 @fspathcmp(i32 %95, i8* %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %92
  %100 = load i8*, i8** %6, align 8
  %101 = load i8*, i8** %3, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i64, i64* %4, align 8
  %104 = load i8*, i8** %3, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = sub i64 %103, %108
  %110 = call i32 @memmove(i8* %100, i8* %102, i64 %109)
  store i32 0, i32* %2, align 4
  br label %123

111:                                              ; preds = %92
  %112 = load i8*, i8** %3, align 8
  store i8 47, i8* %112, align 1
  br label %113

113:                                              ; preds = %111, %85
  br label %81

114:                                              ; preds = %81
  %115 = load i8*, i8** %6, align 8
  %116 = call i32 @real_path(i8* %115)
  %117 = load i8*, i8** %8, align 8
  %118 = call i64 @fspathcmp(i32 %116, i8* %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i8*, i8** %6, align 8
  store i8 0, i8* %121, align 1
  store i32 0, i32* %2, align 4
  br label %123

122:                                              ; preds = %114
  store i32 -1, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %120, %99, %61, %36, %12
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i8* @get_git_work_tree(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @offset_1st_component(i8*) #1

declare dso_local i32 @fspathncmp(i8*, i8*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @fspathcmp(i32, i8*) #1

declare dso_local i32 @real_path(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
