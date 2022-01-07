; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_stats.c_show_trans_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_stats.c_show_trans_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i64, %struct.cpufreq_stats* }
%struct.cpufreq_stats = type { i32, i32*, i32*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"   From  :    To\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"         : \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%9u \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%9u: \00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"cpufreq transition table exceeds PAGE_SIZE. Disabling\0A\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i8*)* @show_trans_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_trans_table(%struct.cpufreq_policy* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cpufreq_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %11 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %10, i32 0, i32 1
  %12 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %11, align 8
  store %struct.cpufreq_stats* %12, %struct.cpufreq_stats** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %14 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %184

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %23, %24
  %26 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %22, i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %33, %34
  %36 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %32, i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %68, %18
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %6, align 8
  %42 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %71

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %55, %56
  %58 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %6, align 8
  %59 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %54, i32 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %50
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %39

71:                                               ; preds = %49, %39
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @PAGE_SIZE, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %76, i32* %3, align 4
  br label %184

77:                                               ; preds = %71
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sub nsw i32 %82, %83
  %85 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %81, i32 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %171, %77
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %6, align 8
  %91 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %174

94:                                               ; preds = %88
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %174

99:                                               ; preds = %94
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = load i32, i32* %7, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %6, align 8
  %108 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %103, i32 %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %152, %99
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %6, align 8
  %120 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %155

123:                                              ; preds = %117
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @PAGE_SIZE, align 4
  %126 = icmp sge i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %155

128:                                              ; preds = %123
  %129 = load i8*, i8** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i32, i32* @PAGE_SIZE, align 4
  %134 = load i32, i32* %7, align 4
  %135 = sub nsw i32 %133, %134
  %136 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %6, align 8
  %137 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %6, align 8
  %141 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 %139, %142
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %138, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %132, i32 %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %128
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %117

155:                                              ; preds = %127, %117
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @PAGE_SIZE, align 4
  %158 = icmp sge i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %174

160:                                              ; preds = %155
  %161 = load i8*, i8** %5, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  %165 = load i32, i32* @PAGE_SIZE, align 4
  %166 = load i32, i32* %7, align 4
  %167 = sub nsw i32 %165, %166
  %168 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %164, i32 %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %160
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %88

174:                                              ; preds = %159, %98, %88
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @PAGE_SIZE, align 4
  %177 = icmp sge i32 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = call i32 @pr_warn_once(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %180 = load i32, i32* @EFBIG, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %3, align 4
  br label %184

182:                                              ; preds = %174
  %183 = load i32, i32* %7, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %182, %178, %75, %17
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @pr_warn_once(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
