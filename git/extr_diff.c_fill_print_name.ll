; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_fill_print_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_fill_print_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.diffstat_file = type { i32, i32, i32, i32, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diffstat_file*)* @fill_print_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_print_name(%struct.diffstat_file* %0) #0 {
  %2 = alloca %struct.diffstat_file*, align 8
  %3 = alloca %struct.strbuf, align 4
  store %struct.diffstat_file* %0, %struct.diffstat_file** %2, align 8
  %4 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %5 = load %struct.diffstat_file*, %struct.diffstat_file** %2, align 8
  %6 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %42

10:                                               ; preds = %1
  %11 = load %struct.diffstat_file*, %struct.diffstat_file** %2, align 8
  %12 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.diffstat_file*, %struct.diffstat_file** %2, align 8
  %17 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.diffstat_file*, %struct.diffstat_file** %2, align 8
  %20 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pprint_rename(%struct.strbuf* %3, i32 %18, i32 %21)
  br label %28

23:                                               ; preds = %10
  %24 = load %struct.diffstat_file*, %struct.diffstat_file** %2, align 8
  %25 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @quote_c_style(i32 %26, %struct.strbuf* %3, i32* null, i32 0)
  br label %28

28:                                               ; preds = %23, %15
  %29 = load %struct.diffstat_file*, %struct.diffstat_file** %2, align 8
  %30 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.diffstat_file*, %struct.diffstat_file** %2, align 8
  %35 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strbuf_addf(%struct.strbuf* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = call i32 @strbuf_detach(%struct.strbuf* %3, i32* null)
  %40 = load %struct.diffstat_file*, %struct.diffstat_file** %2, align 8
  %41 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %38, %9
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pprint_rename(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @quote_c_style(i32, %struct.strbuf*, i32*, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
