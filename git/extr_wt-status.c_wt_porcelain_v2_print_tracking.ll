; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_porcelain_v2_print_tracking.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_porcelain_v2_print_tracking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i32, i32, i32, %struct.TYPE_2__, i32, i64, i64 }
%struct.TYPE_2__ = type { i8*, i8*, i64, i64 }
%struct.branch = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"# branch.oid %s%c\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"(initial)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"# branch.head %s%c\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"(detached)\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"# branch.upstream %s%c\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"# branch.ab +%d -%d%c\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"# branch.ab +? -?%c\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"# branch.ab +0 -0%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*)* @wt_porcelain_v2_print_tracking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_porcelain_v2_print_tracking(%struct.wt_status* %0) #0 {
  %2 = alloca %struct.wt_status*, align 8
  %3 = alloca %struct.branch*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.wt_status* %0, %struct.wt_status** %2, align 8
  %10 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %11 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 0, i32 10
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %9, align 1
  %17 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %18 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %21 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %27 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %26, i32 0, i32 4
  %28 = call i8* @oid_to_hex(i32* %27)
  br label %29

29:                                               ; preds = %25, %24
  %30 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %24 ], [ %28, %25 ]
  %31 = load i8, i8* %9, align 1
  %32 = sext i8 %31 to i32
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %32)
  %34 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %35 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %29
  %39 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %40 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i8, i8* %9, align 1
  %43 = sext i8 %42 to i32
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %160

45:                                               ; preds = %29
  %46 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %47 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @strcmp(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %88, label %51

51:                                               ; preds = %45
  %52 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %53 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i8, i8* %9, align 1
  %56 = sext i8 %55 to i32
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %59 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %51
  %64 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %65 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63, %51
  %70 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %71 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %5, align 8
  br label %87

74:                                               ; preds = %63
  %75 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %76 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %82 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %5, align 8
  br label %86

85:                                               ; preds = %74
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %86

86:                                               ; preds = %85, %80
  br label %87

87:                                               ; preds = %86, %69
  br label %100

88:                                               ; preds = %45
  store i8* null, i8** %5, align 8
  %89 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %90 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @skip_prefix(i32 %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %5)
  %93 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %94 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = load i8, i8* %9, align 1
  %98 = sext i8 %97 to i32
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %96, i32 %98)
  br label %100

100:                                              ; preds = %88, %87
  %101 = load i8*, i8** %5, align 8
  %102 = call %struct.branch* @branch_get(i8* %101)
  store %struct.branch* %102, %struct.branch** %3, align 8
  store i8* null, i8** %4, align 8
  %103 = load %struct.branch*, %struct.branch** %3, align 8
  %104 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %105 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @stat_tracking_info(%struct.branch* %103, i32* %7, i32* %8, i8** %4, i32 0, i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i8*, i8** %4, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %159

110:                                              ; preds = %100
  %111 = load i8*, i8** %4, align 8
  %112 = call i8* @shorten_unambiguous_ref(i8* %111, i32 0)
  store i8* %112, i8** %4, align 8
  %113 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %114 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i8*, i8** %4, align 8
  %117 = load i8, i8* %9, align 1
  %118 = sext i8 %117 to i32
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %116, i32 %118)
  %120 = load i8*, i8** %4, align 8
  %121 = call i32 @free(i8* %120)
  %122 = load i32, i32* %6, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %147

124:                                              ; preds = %110
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %127, %124
  %131 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %132 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i8, i8* %9, align 1
  %137 = sext i8 %136 to i32
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %134, i32 %135, i32 %137)
  br label %146

139:                                              ; preds = %127
  %140 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %141 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i8, i8* %9, align 1
  %144 = sext i8 %143 to i32
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %142, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %139, %130
  br label %158

147:                                              ; preds = %110
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %147
  %151 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %152 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i8, i8* %9, align 1
  %155 = sext i8 %154 to i32
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %153, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %150, %147
  br label %158

158:                                              ; preds = %157, %146
  br label %159

159:                                              ; preds = %158, %100
  br label %160

160:                                              ; preds = %159, %38
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @skip_prefix(i32, i8*, i8**) #1

declare dso_local %struct.branch* @branch_get(i8*) #1

declare dso_local i32 @stat_tracking_info(%struct.branch*, i32*, i32*, i8**, i32, i32) #1

declare dso_local i8* @shorten_unambiguous_ref(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
