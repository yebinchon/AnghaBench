; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_foreach_alt_odb.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_foreach_alt_odb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.object_directory* }
%struct.object_directory = type { %struct.object_directory* }

@the_repository = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @foreach_alt_odb(i32 (%struct.object_directory*, i8*)* %0, i8* %1) #0 {
  %3 = alloca i32 (%struct.object_directory*, i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_directory*, align 8
  %6 = alloca i32, align 4
  store i32 (%struct.object_directory*, i8*)* %0, i32 (%struct.object_directory*, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @the_repository, align 8
  %8 = call i32 @prepare_alt_odb(%struct.TYPE_7__* %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @the_repository, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.object_directory*, %struct.object_directory** %14, align 8
  store %struct.object_directory* %15, %struct.object_directory** %5, align 8
  br label %16

16:                                               ; preds = %28, %2
  %17 = load %struct.object_directory*, %struct.object_directory** %5, align 8
  %18 = icmp ne %struct.object_directory* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i32 (%struct.object_directory*, i8*)*, i32 (%struct.object_directory*, i8*)** %3, align 8
  %21 = load %struct.object_directory*, %struct.object_directory** %5, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 %20(%struct.object_directory* %21, i8* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %32

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.object_directory*, %struct.object_directory** %5, align 8
  %30 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %29, i32 0, i32 0
  %31 = load %struct.object_directory*, %struct.object_directory** %30, align 8
  store %struct.object_directory* %31, %struct.object_directory** %5, align 8
  br label %16

32:                                               ; preds = %26, %16
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @prepare_alt_odb(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
