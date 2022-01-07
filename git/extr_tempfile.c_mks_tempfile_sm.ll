; ModuleID = '/home/carl/AnghaBench/git/extr_tempfile.c_mks_tempfile_sm.c'
source_filename = "/home/carl/AnghaBench/git/extr_tempfile.c_mks_tempfile_sm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tempfile = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tempfile* @mks_tempfile_sm(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tempfile*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tempfile*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call %struct.tempfile* (...) @new_tempfile()
  store %struct.tempfile* %9, %struct.tempfile** %8, align 8
  %10 = load %struct.tempfile*, %struct.tempfile** %8, align 8
  %11 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %10, i32 0, i32 1
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strbuf_add_absolute_path(%struct.TYPE_2__* %11, i8* %12)
  %14 = load %struct.tempfile*, %struct.tempfile** %8, align 8
  %15 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @git_mkstemps_mode(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.tempfile*, %struct.tempfile** %8, align 8
  %22 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.tempfile*, %struct.tempfile** %8, align 8
  %24 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.tempfile*, %struct.tempfile** %8, align 8
  %29 = call i32 @deactivate_tempfile(%struct.tempfile* %28)
  store %struct.tempfile* null, %struct.tempfile** %4, align 8
  br label %34

30:                                               ; preds = %3
  %31 = load %struct.tempfile*, %struct.tempfile** %8, align 8
  %32 = call i32 @activate_tempfile(%struct.tempfile* %31)
  %33 = load %struct.tempfile*, %struct.tempfile** %8, align 8
  store %struct.tempfile* %33, %struct.tempfile** %4, align 8
  br label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.tempfile*, %struct.tempfile** %4, align 8
  ret %struct.tempfile* %35
}

declare dso_local %struct.tempfile* @new_tempfile(...) #1

declare dso_local i32 @strbuf_add_absolute_path(%struct.TYPE_2__*, i8*) #1

declare dso_local i64 @git_mkstemps_mode(i32, i32, i32) #1

declare dso_local i32 @deactivate_tempfile(%struct.tempfile*) #1

declare dso_local i32 @activate_tempfile(%struct.tempfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
