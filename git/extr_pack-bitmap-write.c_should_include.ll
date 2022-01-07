; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_should_include.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_should_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.commit_list* }
%struct.commit_list = type { %struct.commit_list*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bitmap = type { i32 }
%struct.object = type { i32 }

@SEEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*, i8*)* @should_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_include(%struct.commit* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.commit*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bitmap*, align 8
  %7 = alloca %struct.commit_list*, align 8
  store %struct.commit* %0, %struct.commit** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.bitmap*
  store %struct.bitmap* %9, %struct.bitmap** %6, align 8
  %10 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %11 = load %struct.commit*, %struct.commit** %4, align 8
  %12 = call i32 @add_to_include_set(%struct.bitmap* %10, %struct.commit* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %2
  %15 = load %struct.commit*, %struct.commit** %4, align 8
  %16 = getelementptr inbounds %struct.commit, %struct.commit* %15, i32 0, i32 0
  %17 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  store %struct.commit_list* %17, %struct.commit_list** %7, align 8
  %18 = load %struct.commit*, %struct.commit** %4, align 8
  %19 = bitcast %struct.commit* %18 to %struct.object*
  %20 = call i32 @mark_as_seen(%struct.object* %19)
  br label %21

21:                                               ; preds = %24, %14
  %22 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %23 = icmp ne %struct.commit_list* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load i32, i32* @SEEN, align 4
  %26 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %27 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %25
  store i32 %32, i32* %30, align 4
  %33 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %34 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = bitcast %struct.TYPE_4__* %35 to %struct.object*
  %37 = call i32 @mark_as_seen(%struct.object* %36)
  %38 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %39 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %38, i32 0, i32 0
  %40 = load %struct.commit_list*, %struct.commit_list** %39, align 8
  store %struct.commit_list* %40, %struct.commit_list** %7, align 8
  br label %21

41:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %43

42:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @add_to_include_set(%struct.bitmap*, %struct.commit*) #1

declare dso_local i32 @mark_as_seen(%struct.object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
