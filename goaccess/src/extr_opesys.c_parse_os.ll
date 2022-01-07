; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_opesys.c_parse_os.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_opesys.c_parse_os.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@os = common dso_local global i8*** null, align 8
@OPESYS_TYPE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Windows\00", align 1
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Android\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"iPad\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"iPod\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"iPhone\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"OS X\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Darwin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i32)* @parse_os to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_os(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = load i8***, i8**** @os, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8**, i8*** %13, i64 %15
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* @OPESYS_TYPE_LEN, align 4
  %21 = call i32 @xstrncpy(i8* %12, i8* %19, i32 %20)
  %22 = load i8*, i8** %6, align 8
  %23 = call i32* @strstr(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %4
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @get_real_win(i8* %29)
  store i8* %30, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i8*, i8** %10, align 8
  br label %43

34:                                               ; preds = %28, %25
  %35 = load i8***, i8**** @os, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8**, i8*** %35, i64 %37
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @xstrdup(i8* %41)
  br label %43

43:                                               ; preds = %34, %32
  %44 = phi i8* [ %33, %32 ], [ %42, %34 ]
  store i8* %44, i8** %5, align 8
  br label %125

45:                                               ; preds = %4
  %46 = load i8*, i8** %7, align 8
  %47 = call i32* @strstr(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load i8*, i8** %7, align 8
  %51 = call i8* @parse_android(i8* %50)
  store i8* %51, i8** %7, align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %7, align 8
  %56 = call i8* @get_real_android(i8* %55)
  br label %60

57:                                               ; preds = %49
  %58 = load i8*, i8** %7, align 8
  %59 = call i8* @xstrdup(i8* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i8* [ %56, %54 ], [ %59, %57 ]
  store i8* %61, i8** %5, align 8
  br label %125

62:                                               ; preds = %45
  %63 = load i8*, i8** %7, align 8
  %64 = call i32* @strstr(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i32* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i8*, i8** %7, align 8
  %68 = call i32* @strstr(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %66, %62
  %71 = load i8*, i8** %7, align 8
  %72 = call i8* @parse_ios(i8* %71, i32 4)
  %73 = call i8* @xstrdup(i8* %72)
  store i8* %73, i8** %5, align 8
  br label %125

74:                                               ; preds = %66
  %75 = load i8*, i8** %7, align 8
  %76 = call i32* @strstr(i8* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i8*, i8** %7, align 8
  %80 = call i8* @parse_ios(i8* %79, i32 6)
  %81 = call i8* @xstrdup(i8* %80)
  store i8* %81, i8** %5, align 8
  br label %125

82:                                               ; preds = %74
  %83 = load i8*, i8** %7, align 8
  %84 = call i32* @strstr(i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %99

86:                                               ; preds = %82
  %87 = load i8*, i8** %7, align 8
  %88 = call i8* @parse_osx(i8* %87)
  store i8* %88, i8** %7, align 8
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i8*, i8** %7, align 8
  %93 = call i8* @get_real_mac_osx(i8* %92)
  br label %97

94:                                               ; preds = %86
  %95 = load i8*, i8** %7, align 8
  %96 = call i8* @xstrdup(i8* %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = phi i8* [ %93, %91 ], [ %96, %94 ]
  store i8* %98, i8** %5, align 8
  br label %125

99:                                               ; preds = %82
  %100 = load i8*, i8** %7, align 8
  %101 = call i32* @strstr(i8* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load i8*, i8** %6, align 8
  %105 = call i8* @strchr(i8* %104, i8 signext 32)
  store i8* %105, i8** %10, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i8*, i8** %10, align 8
  store i8 0, i8* %108, align 1
  br label %109

109:                                              ; preds = %107, %103
  %110 = load i8*, i8** %6, align 8
  %111 = call i8* @xstrdup(i8* %110)
  store i8* %111, i8** %5, align 8
  br label %125

112:                                              ; preds = %99
  %113 = load i8***, i8**** @os, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8**, i8*** %113, i64 %115
  %117 = load i8**, i8*** %116, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @count_matches(i8* %119, i8 signext 32)
  store i32 %120, i32* %11, align 4
  %121 = load i8*, i8** %7, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @parse_others(i8* %121, i32 %122)
  %124 = call i8* @alloc_string(i32 %123)
  store i8* %124, i8** %5, align 8
  br label %125

125:                                              ; preds = %112, %109, %97, %78, %70, %60, %43
  %126 = load i8*, i8** %5, align 8
  ret i8* %126
}

declare dso_local i32 @xstrncpy(i8*, i8*, i32) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i8* @get_real_win(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @parse_android(i8*) #1

declare dso_local i8* @get_real_android(i8*) #1

declare dso_local i8* @parse_ios(i8*, i32) #1

declare dso_local i8* @parse_osx(i8*) #1

declare dso_local i8* @get_real_mac_osx(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @count_matches(i8*, i8 signext) #1

declare dso_local i8* @alloc_string(i32) #1

declare dso_local i32 @parse_others(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
