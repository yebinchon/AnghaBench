; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_check_has_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_check_has_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.has_commit_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"submodule entry '%s' (%s) is a %s, not a commit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i8*)* @check_has_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_has_commit(%struct.object_id* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.has_commit_data*, align 8
  %7 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.has_commit_data*
  store %struct.has_commit_data* %9, %struct.has_commit_data** %6, align 8
  %10 = load %struct.has_commit_data*, %struct.has_commit_data** %6, align 8
  %11 = getelementptr inbounds %struct.has_commit_data, %struct.has_commit_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.object_id*, %struct.object_id** %4, align 8
  %14 = call i32 @oid_object_info(i32 %12, %struct.object_id* %13, i32* null)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %20 [
    i32 128, label %16
    i32 129, label %17
  ]

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

17:                                               ; preds = %2
  %18 = load %struct.has_commit_data*, %struct.has_commit_data** %6, align 8
  %19 = getelementptr inbounds %struct.has_commit_data, %struct.has_commit_data* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  store i32 0, i32* %3, align 4
  br label %30

20:                                               ; preds = %2
  %21 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.has_commit_data*, %struct.has_commit_data** %6, align 8
  %23 = getelementptr inbounds %struct.has_commit_data, %struct.has_commit_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.object_id*, %struct.object_id** %4, align 8
  %26 = call i32 @oid_to_hex(%struct.object_id* %25)
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @type_name(i32 %27)
  %29 = call i32 @die(i32 %21, i32 %24, i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %16, %17, %20
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @oid_object_info(i32, %struct.object_id*, i32*) #1

declare dso_local i32 @die(i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @type_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
