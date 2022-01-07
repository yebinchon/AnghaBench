; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_alt_odb_usable.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_alt_odb_usable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_object_store = type { %struct.object_directory* }
%struct.object_directory = type { i8*, %struct.object_directory* }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [71 x i8] c"object directory %s does not exist; check .git/objects/info/alternates\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raw_object_store*, %struct.strbuf*, i8*)* @alt_odb_usable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alt_odb_usable(%struct.raw_object_store* %0, %struct.strbuf* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.raw_object_store*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_directory*, align 8
  store %struct.raw_object_store* %0, %struct.raw_object_store** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @is_directory(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = call i32 @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @error(i32 %15, i32 %18)
  store i32 0, i32* %4, align 4
  br label %51

20:                                               ; preds = %3
  %21 = load %struct.raw_object_store*, %struct.raw_object_store** %5, align 8
  %22 = getelementptr inbounds %struct.raw_object_store, %struct.raw_object_store* %21, i32 0, i32 0
  %23 = load %struct.object_directory*, %struct.object_directory** %22, align 8
  store %struct.object_directory* %23, %struct.object_directory** %8, align 8
  br label %24

24:                                               ; preds = %38, %20
  %25 = load %struct.object_directory*, %struct.object_directory** %8, align 8
  %26 = icmp ne %struct.object_directory* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.object_directory*, %struct.object_directory** %8, align 8
  %32 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @fspathcmp(i32 %30, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %51

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.object_directory*, %struct.object_directory** %8, align 8
  %40 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %39, i32 0, i32 1
  %41 = load %struct.object_directory*, %struct.object_directory** %40, align 8
  store %struct.object_directory* %41, %struct.object_directory** %8, align 8
  br label %24

42:                                               ; preds = %24
  %43 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @fspathcmp(i32 %45, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %51

50:                                               ; preds = %42
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %49, %36, %14
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @is_directory(i32) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @fspathcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
