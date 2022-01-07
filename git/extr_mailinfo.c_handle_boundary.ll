; ModuleID = '/home/carl/AnghaBench/git/extr_mailinfo.c_handle_boundary.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailinfo.c_handle_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64 }
%struct.mailinfo = type { i32, i32, i32, i32, i32, %struct.strbuf**, %struct.strbuf** }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Detected mismatched boundaries, can't recover\00", align 1
@TE_DONTCARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mailinfo*, %struct.strbuf*)* @handle_boundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_boundary(%struct.mailinfo* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mailinfo*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.strbuf, align 8
  store %struct.mailinfo* %0, %struct.mailinfo** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %7 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %8 = call i32 @strbuf_addch(%struct.strbuf* %6, i8 signext 10)
  br label %9

9:                                                ; preds = %78, %2
  %10 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %11 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %14 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %13, i32 0, i32 6
  %15 = load %struct.strbuf**, %struct.strbuf*** %14, align 8
  %16 = load %struct.strbuf*, %struct.strbuf** %15, align 8
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 2
  %20 = icmp sge i64 %12, %19
  br i1 %20, label %21, label %79

21:                                               ; preds = %9
  %22 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %26 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %25, i32 0, i32 6
  %27 = load %struct.strbuf**, %struct.strbuf*** %26, align 8
  %28 = load %struct.strbuf*, %struct.strbuf** %27, align 8
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %24, %30
  %32 = call i32 @memcmp(i64 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %79, label %34

34:                                               ; preds = %21
  %35 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %36 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %35, i32 0, i32 6
  %37 = load %struct.strbuf**, %struct.strbuf*** %36, align 8
  %38 = load %struct.strbuf*, %struct.strbuf** %37, align 8
  %39 = call i32 @strbuf_release(%struct.strbuf* %38)
  %40 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %41 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %40, i32 0, i32 6
  %42 = load %struct.strbuf**, %struct.strbuf*** %41, align 8
  %43 = load %struct.strbuf*, %struct.strbuf** %42, align 8
  %44 = call i32 @FREE_AND_NULL(%struct.strbuf* %43)
  %45 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %46 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %45, i32 0, i32 6
  %47 = load %struct.strbuf**, %struct.strbuf*** %46, align 8
  %48 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %47, i32 -1
  store %struct.strbuf** %48, %struct.strbuf*** %46, align 8
  %49 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %50 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %49, i32 0, i32 5
  %51 = load %struct.strbuf**, %struct.strbuf*** %50, align 8
  %52 = icmp ult %struct.strbuf** %48, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %34
  %54 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %56 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 8
  %57 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %58 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %57, i32 0, i32 5
  %59 = load %struct.strbuf**, %struct.strbuf*** %58, align 8
  %60 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %61 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %60, i32 0, i32 6
  store %struct.strbuf** %59, %struct.strbuf*** %61, align 8
  %62 = call i32 @strbuf_release(%struct.strbuf* %6)
  store i32 0, i32* %3, align 4
  br label %112

63:                                               ; preds = %34
  %64 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %65 = call i32 @handle_filter(%struct.mailinfo* %64, %struct.strbuf* %6)
  %66 = call i32 @strbuf_release(%struct.strbuf* %6)
  %67 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %68 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %112

72:                                               ; preds = %63
  %73 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %74 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %75 = call i32 @find_boundary(%struct.mailinfo* %73, %struct.strbuf* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %112

78:                                               ; preds = %72
  br label %9

79:                                               ; preds = %21, %9
  %80 = load i32, i32* @TE_DONTCARE, align 4
  %81 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %82 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %84 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %83, i32 0, i32 3
  %85 = call i32 @strbuf_reset(i32* %84)
  br label %86

86:                                               ; preds = %93, %79
  %87 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %88 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %89 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @read_one_header_line(%struct.strbuf* %87, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %95 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %96 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %97 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @check_header(%struct.mailinfo* %94, %struct.strbuf* %95, i32 %98, i32 0)
  br label %86

100:                                              ; preds = %86
  %101 = call i32 @strbuf_release(%struct.strbuf* %6)
  %102 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %103 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %104 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @strbuf_getline_lf(%struct.strbuf* %102, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %112

109:                                              ; preds = %100
  %110 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %111 = call i32 @strbuf_addch(%struct.strbuf* %110, i8 signext 10)
  store i32 1, i32* %3, align 4
  br label %112

112:                                              ; preds = %109, %108, %77, %71, %53
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @memcmp(i64, i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @FREE_AND_NULL(%struct.strbuf*) #2

declare dso_local i32 @error(i8*) #2

declare dso_local i32 @handle_filter(%struct.mailinfo*, %struct.strbuf*) #2

declare dso_local i32 @find_boundary(%struct.mailinfo*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_reset(i32*) #2

declare dso_local i64 @read_one_header_line(%struct.strbuf*, i32) #2

declare dso_local i32 @check_header(%struct.mailinfo*, %struct.strbuf*, i32, i32) #2

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
