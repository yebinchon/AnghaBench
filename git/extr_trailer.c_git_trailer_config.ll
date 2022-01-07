; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_git_trailer_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_git_trailer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.arg_item = type { %struct.conf_info }
%struct.conf_info = type { i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"trailer.\00", align 1
@trailer_config_items = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"more than one %s\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"unknown value '%s' for key '%s'\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"trailer.c: unhandled type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @git_trailer_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_trailer_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.arg_item*, align 8
  %11 = alloca %struct.conf_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %12, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @skip_prefix(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %8)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %143

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = call i8* @strrchr(i8* %20, i8 signext 46)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %143

25:                                               ; preds = %19
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %9, align 8
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %60, %25
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trailer_config_items, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trailer_config_items, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = call i64 @strcmp(i32 %39, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %60

44:                                               ; preds = %33
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sub nsw i64 %50, 1
  %52 = trunc i64 %51 to i32
  %53 = call i8* @xstrndup(i8* %45, i32 %52)
  store i8* %53, i8** %12, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trailer_config_items, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %13, align 4
  br label %63

60:                                               ; preds = %43
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %28

63:                                               ; preds = %44, %28
  %64 = load i8*, i8** %12, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %143

67:                                               ; preds = %63
  %68 = load i8*, i8** %12, align 8
  %69 = call %struct.arg_item* @get_conf_item(i8* %68)
  store %struct.arg_item* %69, %struct.arg_item** %10, align 8
  %70 = load %struct.arg_item*, %struct.arg_item** %10, align 8
  %71 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %70, i32 0, i32 0
  store %struct.conf_info* %71, %struct.conf_info** %11, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i32, i32* %13, align 4
  switch i32 %74, label %139 [
    i32 129, label %75
    i32 132, label %89
    i32 128, label %103
    i32 131, label %115
    i32 130, label %127
  ]

75:                                               ; preds = %67
  %76 = load %struct.conf_info*, %struct.conf_info** %11, align 8
  %77 = getelementptr inbounds %struct.conf_info, %struct.conf_info* %76, i32 0, i32 4
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 (i32, i8*, ...) @warning(i32 %81, i8* %82)
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i8*, i8** %6, align 8
  %86 = call i8* @xstrdup(i8* %85)
  %87 = load %struct.conf_info*, %struct.conf_info** %11, align 8
  %88 = getelementptr inbounds %struct.conf_info, %struct.conf_info* %87, i32 0, i32 4
  store i8* %86, i8** %88, align 8
  br label %142

89:                                               ; preds = %67
  %90 = load %struct.conf_info*, %struct.conf_info** %11, align 8
  %91 = getelementptr inbounds %struct.conf_info, %struct.conf_info* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 (i32, i8*, ...) @warning(i32 %95, i8* %96)
  br label %98

98:                                               ; preds = %94, %89
  %99 = load i8*, i8** %6, align 8
  %100 = call i8* @xstrdup(i8* %99)
  %101 = load %struct.conf_info*, %struct.conf_info** %11, align 8
  %102 = getelementptr inbounds %struct.conf_info, %struct.conf_info* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  br label %142

103:                                              ; preds = %67
  %104 = load %struct.conf_info*, %struct.conf_info** %11, align 8
  %105 = getelementptr inbounds %struct.conf_info, %struct.conf_info* %104, i32 0, i32 2
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @trailer_set_where(i32* %105, i8* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i8*, i8** %6, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = call i32 (i32, i8*, ...) @warning(i32 %110, i8* %111, i8* %112)
  br label %114

114:                                              ; preds = %109, %103
  br label %142

115:                                              ; preds = %67
  %116 = load %struct.conf_info*, %struct.conf_info** %11, align 8
  %117 = getelementptr inbounds %struct.conf_info, %struct.conf_info* %116, i32 0, i32 1
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 @trailer_set_if_exists(i32* %117, i8* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i8*, i8** %6, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = call i32 (i32, i8*, ...) @warning(i32 %122, i8* %123, i8* %124)
  br label %126

126:                                              ; preds = %121, %115
  br label %142

127:                                              ; preds = %67
  %128 = load %struct.conf_info*, %struct.conf_info** %11, align 8
  %129 = getelementptr inbounds %struct.conf_info, %struct.conf_info* %128, i32 0, i32 0
  %130 = load i8*, i8** %6, align 8
  %131 = call i32 @trailer_set_if_missing(i32* %129, i8* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i8*, i8** %6, align 8
  %136 = load i8*, i8** %5, align 8
  %137 = call i32 (i32, i8*, ...) @warning(i32 %134, i8* %135, i8* %136)
  br label %138

138:                                              ; preds = %133, %127
  br label %142

139:                                              ; preds = %67
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @BUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %139, %138, %126, %114, %98, %84
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %142, %66, %24, %18
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i8* @xstrndup(i8*, i32) #1

declare dso_local %struct.arg_item* @get_conf_item(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @warning(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @trailer_set_where(i32*, i8*) #1

declare dso_local i32 @trailer_set_if_exists(i32*, i8*) #1

declare dso_local i32 @trailer_set_if_missing(i32*, i8*) #1

declare dso_local i32 @BUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
