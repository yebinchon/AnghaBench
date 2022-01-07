; ModuleID = '/home/carl/AnghaBench/git/extr_ls-refs.c_ls_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_ls-refs.c_ls_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.argv_array = type { i32 }
%struct.packet_reader = type { i8* }
%struct.ls_refs_data = type { i32, i32, i32 }

@ls_refs_config = common dso_local global i32 0, align 4
@PACKET_READ_FLUSH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"peel\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"symrefs\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"ref-prefix \00", align 1
@send_ref = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ls_refs(%struct.repository* %0, %struct.argv_array* %1, %struct.packet_reader* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.argv_array*, align 8
  %6 = alloca %struct.packet_reader*, align 8
  %7 = alloca %struct.ls_refs_data, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.argv_array* %1, %struct.argv_array** %5, align 8
  store %struct.packet_reader* %2, %struct.packet_reader** %6, align 8
  %10 = call i32 @memset(%struct.ls_refs_data* %7, i32 0, i32 12)
  %11 = load i32, i32* @ls_refs_config, align 4
  %12 = call i32 @git_config(i32 %11, i32* null)
  br label %13

13:                                               ; preds = %43, %3
  %14 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %15 = call i64 @packet_reader_read(%struct.packet_reader* %14)
  %16 = load i64, i64* @PACKET_READ_FLUSH, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = load %struct.packet_reader*, %struct.packet_reader** %6, align 8
  %20 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.ls_refs_data, %struct.ls_refs_data* %7, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %43

27:                                               ; preds = %18
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ls_refs_data, %struct.ls_refs_data* %7, i32 0, i32 1
  store i32 1, i32* %32, align 4
  br label %42

33:                                               ; preds = %27
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @skip_prefix(i8* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %9)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ls_refs_data, %struct.ls_refs_data* %7, i32 0, i32 2
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @argv_array_push(i32* %38, i8* %39)
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %31
  br label %43

43:                                               ; preds = %42, %25
  br label %13

44:                                               ; preds = %13
  %45 = load i32, i32* @send_ref, align 4
  %46 = call i32 @head_ref_namespaced(i32 %45, %struct.ls_refs_data* %7)
  %47 = load i32, i32* @send_ref, align 4
  %48 = call i32 @for_each_namespaced_ref(i32 %47, %struct.ls_refs_data* %7)
  %49 = call i32 @packet_flush(i32 1)
  %50 = getelementptr inbounds %struct.ls_refs_data, %struct.ls_refs_data* %7, i32 0, i32 2
  %51 = call i32 @argv_array_clear(i32* %50)
  ret i32 0
}

declare dso_local i32 @memset(%struct.ls_refs_data*, i32, i32) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i64 @packet_reader_read(%struct.packet_reader*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @argv_array_push(i32*, i8*) #1

declare dso_local i32 @head_ref_namespaced(i32, %struct.ls_refs_data*) #1

declare dso_local i32 @for_each_namespaced_ref(i32, %struct.ls_refs_data*) #1

declare dso_local i32 @packet_flush(i32) #1

declare dso_local i32 @argv_array_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
