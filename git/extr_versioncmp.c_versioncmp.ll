; ModuleID = '/home/carl/AnghaBench/git/extr_versioncmp.c_versioncmp.c'
source_filename = "/home/carl/AnghaBench/git/extr_versioncmp.c_versioncmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }

@versioncmp.next_state = internal constant [12 x i32] [i32 129, i32 130, i32 128, i32 129, i32 130, i32 130, i32 129, i32 131, i32 131, i32 129, i32 131, i32 128], align 16
@versioncmp.result_type = internal constant [36 x i32] [i32 133, i32 133, i32 133, i32 133, i32 132, i32 133, i32 133, i32 133, i32 133, i32 133, i32 -1, i32 -1, i32 1, i32 132, i32 132, i32 1, i32 132, i32 132, i32 133, i32 133, i32 133, i32 133, i32 133, i32 133, i32 133, i32 133, i32 133, i32 133, i32 1, i32 1, i32 -1, i32 133, i32 133, i32 -1, i32 133, i32 133], align 16
@initialized = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"versionsort.suffix\00", align 1
@prereleases = common dso_local global %struct.string_list* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"versionsort.prereleasesuffix\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"ignoring versionsort.prereleasesuffix because versionsort.suffix is set\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @versioncmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.string_list*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %153

19:                                               ; preds = %2
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %6, align 8
  %22 = load i8, i8* %20, align 1
  store i8 %22, i8* %8, align 1
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %7, align 8
  %25 = load i8, i8* %23, align 1
  store i8 %25, i8* %9, align 1
  %26 = load i8, i8* %8, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 48
  %29 = zext i1 %28 to i32
  %30 = load i8, i8* %8, align 1
  %31 = call i64 @isdigit(i8 zeroext %30)
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = add nsw i32 %29, %33
  %35 = add nsw i32 129, %34
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %49, %19
  %37 = load i8, i8* %8, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* %9, align 1
  %40 = zext i8 %39 to i32
  %41 = sub nsw i32 %38, %40
  store i32 %41, i32* %11, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %36
  %44 = load i8, i8* %8, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %3, align 4
  br label %153

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [12 x i32], [12 x i32]* @versioncmp.next_state, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  %56 = load i8, i8* %54, align 1
  store i8 %56, i8* %8, align 1
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  %59 = load i8, i8* %57, align 1
  store i8 %59, i8* %9, align 1
  %60 = load i8, i8* %8, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 48
  %63 = zext i1 %62 to i32
  %64 = load i8, i8* %8, align 1
  %65 = call i64 @isdigit(i8 zeroext %64)
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = add nsw i32 %63, %67
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %36

71:                                               ; preds = %36
  %72 = load i32, i32* @initialized, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %71
  store i32 1, i32* @initialized, align 4
  %75 = call i8* @git_config_get_value_multi(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %76 = bitcast i8* %75 to %struct.string_list*
  store %struct.string_list* %76, %struct.string_list** @prereleases, align 8
  %77 = call i8* @git_config_get_value_multi(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %78 = bitcast i8* %77 to %struct.string_list*
  store %struct.string_list* %78, %struct.string_list** %12, align 8
  %79 = load %struct.string_list*, %struct.string_list** @prereleases, align 8
  %80 = icmp ne %struct.string_list* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load %struct.string_list*, %struct.string_list** %12, align 8
  %83 = icmp ne %struct.string_list* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 @warning(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %81
  br label %89

87:                                               ; preds = %74
  %88 = load %struct.string_list*, %struct.string_list** %12, align 8
  store %struct.string_list* %88, %struct.string_list** @prereleases, align 8
  br label %89

89:                                               ; preds = %87, %86
  br label %90

90:                                               ; preds = %89, %71
  %91 = load %struct.string_list*, %struct.string_list** @prereleases, align 8
  %92 = icmp ne %struct.string_list* %91, null
  br i1 %92, label %93, label %107

93:                                               ; preds = %90
  %94 = load i8*, i8** %4, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = sub nsw i64 %100, 1
  %102 = trunc i64 %101 to i32
  %103 = call i64 @swap_prereleases(i8* %94, i8* %95, i32 %102, i32* %11)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %93
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %3, align 4
  br label %153

107:                                              ; preds = %93, %90
  %108 = load i32, i32* %10, align 4
  %109 = mul nsw i32 %108, 3
  %110 = load i8, i8* %9, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 48
  %113 = zext i1 %112 to i32
  %114 = load i8, i8* %9, align 1
  %115 = call i64 @isdigit(i8 zeroext %114)
  %116 = icmp ne i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = add nsw i32 %113, %117
  %119 = add nsw i32 %109, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [36 x i32], [36 x i32]* @versioncmp.result_type, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  switch i32 %123, label %151 [
    i32 133, label %124
    i32 132, label %126
  ]

124:                                              ; preds = %107
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %3, align 4
  br label %153

126:                                              ; preds = %107
  br label %127

127:                                              ; preds = %140, %126
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %6, align 8
  %130 = load i8, i8* %128, align 1
  %131 = call i64 @isdigit(i8 zeroext %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %127
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %7, align 8
  %136 = load i8, i8* %134, align 1
  %137 = call i64 @isdigit(i8 zeroext %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %133
  store i32 1, i32* %3, align 4
  br label %153

140:                                              ; preds = %133
  br label %127

141:                                              ; preds = %127
  %142 = load i8*, i8** %7, align 8
  %143 = load i8, i8* %142, align 1
  %144 = call i64 @isdigit(i8 zeroext %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %149

147:                                              ; preds = %141
  %148 = load i32, i32* %11, align 4
  br label %149

149:                                              ; preds = %147, %146
  %150 = phi i32 [ -1, %146 ], [ %148, %147 ]
  store i32 %150, i32* %3, align 4
  br label %153

151:                                              ; preds = %107
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %151, %149, %139, %124, %105, %47, %18
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i8* @git_config_get_value_multi(i8*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i64 @swap_prereleases(i8*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
