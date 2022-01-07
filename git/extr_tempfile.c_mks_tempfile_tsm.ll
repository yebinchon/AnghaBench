; ModuleID = '/home/carl/AnghaBench/git/extr_tempfile.c_mks_tempfile_tsm.c'
source_filename = "/home/carl/AnghaBench/git/extr_tempfile.c_mks_tempfile_tsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tempfile = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tempfile* @mks_tempfile_tsm(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tempfile*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tempfile*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call %struct.tempfile* (...) @new_tempfile()
  store %struct.tempfile* %10, %struct.tempfile** %8, align 8
  %11 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %15

15:                                               ; preds = %14, %3
  %16 = load %struct.tempfile*, %struct.tempfile** %8, align 8
  %17 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %16, i32 0, i32 1
  %18 = load i8*, i8** %9, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strbuf_addf(%struct.TYPE_2__* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %18, i8* %19)
  %21 = load %struct.tempfile*, %struct.tempfile** %8, align 8
  %22 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @git_mkstemps_mode(i32 %24, i32 %25, i32 %26)
  %28 = load %struct.tempfile*, %struct.tempfile** %8, align 8
  %29 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.tempfile*, %struct.tempfile** %8, align 8
  %31 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %15
  %35 = load %struct.tempfile*, %struct.tempfile** %8, align 8
  %36 = call i32 @deactivate_tempfile(%struct.tempfile* %35)
  store %struct.tempfile* null, %struct.tempfile** %4, align 8
  br label %41

37:                                               ; preds = %15
  %38 = load %struct.tempfile*, %struct.tempfile** %8, align 8
  %39 = call i32 @activate_tempfile(%struct.tempfile* %38)
  %40 = load %struct.tempfile*, %struct.tempfile** %8, align 8
  store %struct.tempfile* %40, %struct.tempfile** %4, align 8
  br label %41

41:                                               ; preds = %37, %34
  %42 = load %struct.tempfile*, %struct.tempfile** %4, align 8
  ret %struct.tempfile* %42
}

declare dso_local %struct.tempfile* @new_tempfile(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strbuf_addf(%struct.TYPE_2__*, i8*, i8*, i8*) #1

declare dso_local i64 @git_mkstemps_mode(i32, i32, i32) #1

declare dso_local i32 @deactivate_tempfile(%struct.tempfile*) #1

declare dso_local i32 @activate_tempfile(%struct.tempfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
