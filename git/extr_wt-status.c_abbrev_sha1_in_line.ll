; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_abbrev_sha1_in_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_abbrev_sha1_in_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"exec \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"x \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"label \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"l \00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*)* @abbrev_sha1_in_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abbrev_sha1_in_line(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca %struct.strbuf**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_id, align 4
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  %6 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %7 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @starts_with(i32 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %1
  %12 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @starts_with(i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %11
  %18 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @starts_with(i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @starts_with(i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %17, %11, %1
  br label %93

30:                                               ; preds = %23
  %31 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %32 = call %struct.strbuf** @strbuf_split_max(%struct.strbuf* %31, i8 signext 32, i32 3)
  store %struct.strbuf** %32, %struct.strbuf*** %3, align 8
  %33 = load %struct.strbuf**, %struct.strbuf*** %3, align 8
  %34 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %33, i64 0
  %35 = load %struct.strbuf*, %struct.strbuf** %34, align 8
  %36 = icmp ne %struct.strbuf* %35, null
  br i1 %36, label %37, label %90

37:                                               ; preds = %30
  %38 = load %struct.strbuf**, %struct.strbuf*** %3, align 8
  %39 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %38, i64 1
  %40 = load %struct.strbuf*, %struct.strbuf** %39, align 8
  %41 = icmp ne %struct.strbuf* %40, null
  br i1 %41, label %42, label %90

42:                                               ; preds = %37
  %43 = load %struct.strbuf**, %struct.strbuf*** %3, align 8
  %44 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %43, i64 1
  %45 = load %struct.strbuf*, %struct.strbuf** %44, align 8
  %46 = call i32 @strbuf_trim(%struct.strbuf* %45)
  %47 = load %struct.strbuf**, %struct.strbuf*** %3, align 8
  %48 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %47, i64 1
  %49 = load %struct.strbuf*, %struct.strbuf** %48, align 8
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @get_oid(i32 %51, %struct.object_id* %5)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %89, label %54

54:                                               ; preds = %42
  %55 = load %struct.strbuf**, %struct.strbuf*** %3, align 8
  %56 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %55, i64 1
  %57 = load %struct.strbuf*, %struct.strbuf** %56, align 8
  %58 = call i32 @strbuf_reset(%struct.strbuf* %57)
  %59 = load %struct.strbuf**, %struct.strbuf*** %3, align 8
  %60 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %59, i64 1
  %61 = load %struct.strbuf*, %struct.strbuf** %60, align 8
  %62 = load i32, i32* @DEFAULT_ABBREV, align 4
  %63 = call i32 @strbuf_add_unique_abbrev(%struct.strbuf* %61, %struct.object_id* %5, i32 %62)
  %64 = load %struct.strbuf**, %struct.strbuf*** %3, align 8
  %65 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %64, i64 1
  %66 = load %struct.strbuf*, %struct.strbuf** %65, align 8
  %67 = call i32 @strbuf_addch(%struct.strbuf* %66, i8 signext 32)
  %68 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %69 = call i32 @strbuf_reset(%struct.strbuf* %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %85, %54
  %71 = load %struct.strbuf**, %struct.strbuf*** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %71, i64 %73
  %75 = load %struct.strbuf*, %struct.strbuf** %74, align 8
  %76 = icmp ne %struct.strbuf* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %70
  %78 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %79 = load %struct.strbuf**, %struct.strbuf*** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %79, i64 %81
  %83 = load %struct.strbuf*, %struct.strbuf** %82, align 8
  %84 = call i32 @strbuf_addbuf(%struct.strbuf* %78, %struct.strbuf* %83)
  br label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %70

88:                                               ; preds = %70
  br label %89

89:                                               ; preds = %88, %42
  br label %90

90:                                               ; preds = %89, %37, %30
  %91 = load %struct.strbuf**, %struct.strbuf*** %3, align 8
  %92 = call i32 @strbuf_list_free(%struct.strbuf** %91)
  br label %93

93:                                               ; preds = %90, %29
  ret void
}

declare dso_local i64 @starts_with(i32, i8*) #1

declare dso_local %struct.strbuf** @strbuf_split_max(%struct.strbuf*, i8 signext, i32) #1

declare dso_local i32 @strbuf_trim(%struct.strbuf*) #1

declare dso_local i32 @get_oid(i32, %struct.object_id*) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_add_unique_abbrev(%struct.strbuf*, %struct.object_id*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_list_free(%struct.strbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
