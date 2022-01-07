; ModuleID = '/home/carl/AnghaBench/git/extr_fsck.c_fsck_walk.c'
source_filename = "/home/carl/AnghaBench/git/extr_fsck.c_fsck_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32, i32 }
%struct.fsck_options = type { i32 }
%struct.tree = type { i32 }
%struct.commit = type { i32 }
%struct.tag = type { i32 }

@OBJ_NONE = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unknown object type for %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsck_walk(%struct.object* %0, i8* %1, %struct.fsck_options* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fsck_options*, align 8
  store %struct.object* %0, %struct.object** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.fsck_options* %2, %struct.fsck_options** %7, align 8
  %8 = load %struct.object*, %struct.object** %5, align 8
  %9 = icmp ne %struct.object* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %50

11:                                               ; preds = %3
  %12 = load %struct.object*, %struct.object** %5, align 8
  %13 = getelementptr inbounds %struct.object, %struct.object* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @OBJ_NONE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i32, i32* @the_repository, align 4
  %19 = load %struct.object*, %struct.object** %5, align 8
  %20 = getelementptr inbounds %struct.object, %struct.object* %19, i32 0, i32 1
  %21 = call i32 @parse_object(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %17, %11
  %23 = load %struct.object*, %struct.object** %5, align 8
  %24 = getelementptr inbounds %struct.object, %struct.object* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %45 [
    i32 131, label %26
    i32 128, label %27
    i32 130, label %33
    i32 129, label %39
  ]

26:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %50

27:                                               ; preds = %22
  %28 = load %struct.object*, %struct.object** %5, align 8
  %29 = bitcast %struct.object* %28 to %struct.tree*
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %32 = call i32 @fsck_walk_tree(%struct.tree* %29, i8* %30, %struct.fsck_options* %31)
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %22
  %34 = load %struct.object*, %struct.object** %5, align 8
  %35 = bitcast %struct.object* %34 to %struct.commit*
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %38 = call i32 @fsck_walk_commit(%struct.commit* %35, i8* %36, %struct.fsck_options* %37)
  store i32 %38, i32* %4, align 4
  br label %50

39:                                               ; preds = %22
  %40 = load %struct.object*, %struct.object** %5, align 8
  %41 = bitcast %struct.object* %40 to %struct.tag*
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %44 = call i32 @fsck_walk_tag(%struct.tag* %41, i8* %42, %struct.fsck_options* %43)
  store i32 %44, i32* %4, align 4
  br label %50

45:                                               ; preds = %22
  %46 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %47 = load %struct.object*, %struct.object** %5, align 8
  %48 = call i32 @describe_object(%struct.fsck_options* %46, %struct.object* %47)
  %49 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 -1, i32* %4, align 4
  br label %50

50:                                               ; preds = %45, %39, %33, %27, %26, %10
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @parse_object(i32, i32*) #1

declare dso_local i32 @fsck_walk_tree(%struct.tree*, i8*, %struct.fsck_options*) #1

declare dso_local i32 @fsck_walk_commit(%struct.commit*, i8*, %struct.fsck_options*) #1

declare dso_local i32 @fsck_walk_tag(%struct.tag*, i8*, %struct.fsck_options*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @describe_object(%struct.fsck_options*, %struct.object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
