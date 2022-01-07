; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-targ-extension.c_targ_check_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-targ-extension.c_targ_check_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"targ_check: type = %d, key = %s, key_len = %d\0A\00", align 1
@mct_get = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"search\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"prices\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"deletegroup\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ad_pricing\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"targ_audience\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"audience\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ad_\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"ad_query\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"ad_info\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"recent_views_stats\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"recent_ad_viewers\00", align 1
@mct_set = common dso_local global i32 0, align 4
@mct_replace = common dso_local global i32 0, align 4
@mct_add = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"xtemp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @targ_check_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @targ_check_query(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* @verbosity, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* @stderr, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %13, i8* %14, i32 %15)
  br label %17

17:                                               ; preds = %11, %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @eat_at(i8* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @mct_get, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %121

31:                                               ; preds = %17
  %32 = load i32, i32* %7, align 4
  %33 = icmp sge i32 %32, 6
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %118

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %7, align 4
  %40 = icmp sge i32 %39, 6
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @strncmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %118

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %7, align 4
  %47 = icmp sge i32 %46, 6
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strncmp(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %118

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %7, align 4
  %54 = icmp sge i32 %53, 11
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @strncmp(i8* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %118

59:                                               ; preds = %55, %52
  %60 = load i32, i32* %7, align 4
  %61 = icmp sge i32 %60, 10
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @strncmp(i8* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 10)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %118

66:                                               ; preds = %62, %59
  %67 = load i32, i32* %7, align 4
  %68 = icmp sge i32 %67, 13
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @strncmp(i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 13)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %118

73:                                               ; preds = %69, %66
  %74 = load i32, i32* %7, align 4
  %75 = icmp sge i32 %74, 8
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @strncmp(i8* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 8)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %118

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %7, align 4
  %82 = icmp sge i32 %81, 3
  br i1 %82, label %83, label %101

83:                                               ; preds = %80
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @strncmp(i8* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 3)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %7, align 4
  %89 = icmp sge i32 %88, 8
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @strncmp(i8* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 8)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %90, %87
  %95 = load i32, i32* %7, align 4
  %96 = icmp sge i32 %95, 7
  br i1 %96, label %97, label %118

97:                                               ; preds = %94
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @strncmp(i8* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 7)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %118, label %101

101:                                              ; preds = %97, %90, %83, %80
  %102 = load i32, i32* %7, align 4
  %103 = icmp sge i32 %102, 18
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 @strncmp(i8* %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 18)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %104, %101
  %109 = load i32, i32* %7, align 4
  %110 = icmp sge i32 %109, 17
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 @strncmp(i8* %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 17)
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  br label %116

116:                                              ; preds = %111, %108
  %117 = phi i1 [ false, %108 ], [ %115, %111 ]
  br label %118

118:                                              ; preds = %116, %104, %97, %94, %76, %69, %62, %55, %48, %41, %34
  %119 = phi i1 [ true, %104 ], [ true, %97 ], [ true, %94 ], [ true, %76 ], [ true, %69 ], [ true, %62 ], [ true, %55 ], [ true, %48 ], [ true, %41 ], [ true, %34 ], [ %117, %116 ]
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %4, align 4
  br label %154

121:                                              ; preds = %17
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @mct_set, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %133, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @mct_replace, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @mct_add, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %153

133:                                              ; preds = %129, %125, %121
  %134 = load i32, i32* %7, align 4
  %135 = icmp sge i32 %134, 4
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i8*, i8** %6, align 8
  %138 = call i32 @strncmp(i8* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 4)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %136, %133
  %141 = load i32, i32* %7, align 4
  %142 = icmp sge i32 %141, 5
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i8*, i8** %6, align 8
  %145 = call i32 @strncmp(i8* %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 5)
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  br label %148

148:                                              ; preds = %143, %140
  %149 = phi i1 [ false, %140 ], [ %147, %143 ]
  br label %150

150:                                              ; preds = %148, %136
  %151 = phi i1 [ true, %136 ], [ %149, %148 ]
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %4, align 4
  br label %154

153:                                              ; preds = %129
  store i32 1, i32* %4, align 4
  br label %154

154:                                              ; preds = %153, %150, %118
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @eat_at(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
