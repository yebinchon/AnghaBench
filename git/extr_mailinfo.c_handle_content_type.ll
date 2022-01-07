; ModuleID = '/home/carl/AnghaBench/git/extr_mailinfo.c_handle_content_type.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailinfo.c_handle_content_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailinfo = type { i32, %struct.strbuf, %struct.strbuf**, %struct.strbuf**, i8*, i8* }
%struct.strbuf = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"format=\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"flowed\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"delsp=\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"boundary=\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@MAX_BOUNDARIES = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"Too many boundaries to handle\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"charset=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mailinfo*, %struct.strbuf*)* @handle_content_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_content_type(%struct.mailinfo* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.mailinfo*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.strbuf*, align 8
  store %struct.mailinfo* %0, %struct.mailinfo** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %6 = call %struct.strbuf* @xmalloc(i32 8)
  store %struct.strbuf* %6, %struct.strbuf** %5, align 8
  %7 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %8 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %9 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @strbuf_init(%struct.strbuf* %7, i32 %10)
  %12 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @has_attr_value(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %17 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %16, i32 0, i32 5
  store i8* %15, i8** %17, align 8
  %18 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @has_attr_value(i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %22 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %23 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %28 = call i64 @slurp_attr(i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %struct.strbuf* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %2
  %31 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %32 = call i32 @strbuf_insert(%struct.strbuf* %31, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %33 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %34 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %33, i32 0, i32 2
  %35 = load %struct.strbuf**, %struct.strbuf*** %34, align 8
  %36 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %35, i32 1
  store %struct.strbuf** %36, %struct.strbuf*** %34, align 8
  %37 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %38 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %37, i32 0, i32 3
  %39 = load %struct.strbuf**, %struct.strbuf*** %38, align 8
  %40 = load i64, i64* @MAX_BOUNDARIES, align 8
  %41 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %39, i64 %40
  %42 = icmp uge %struct.strbuf** %36, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %30
  %44 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %45 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %46 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 8
  %47 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %48 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %47, i32 0, i32 3
  %49 = load %struct.strbuf**, %struct.strbuf*** %48, align 8
  %50 = load i64, i64* @MAX_BOUNDARIES, align 8
  %51 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %49, i64 %50
  %52 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %51, i64 -1
  %53 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %54 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %53, i32 0, i32 2
  store %struct.strbuf** %52, %struct.strbuf*** %54, align 8
  br label %74

55:                                               ; preds = %30
  %56 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %57 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %58 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %57, i32 0, i32 2
  %59 = load %struct.strbuf**, %struct.strbuf*** %58, align 8
  store %struct.strbuf* %56, %struct.strbuf** %59, align 8
  store %struct.strbuf* null, %struct.strbuf** %5, align 8
  br label %60

60:                                               ; preds = %55, %2
  %61 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %62 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %65 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %64, i32 0, i32 1
  %66 = call i64 @slurp_attr(i32 %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), %struct.strbuf* %65)
  %67 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %68 = icmp ne %struct.strbuf* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %71 = call i32 @strbuf_release(%struct.strbuf* %70)
  %72 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %73 = call i32 @free(%struct.strbuf* %72)
  br label %74

74:                                               ; preds = %43, %69, %60
  ret void
}

declare dso_local %struct.strbuf* @xmalloc(i32) #1

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i8* @has_attr_value(i32, i8*, i8*) #1

declare dso_local i64 @slurp_attr(i32, i8*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_insert(%struct.strbuf*, i32, i8*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @free(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
