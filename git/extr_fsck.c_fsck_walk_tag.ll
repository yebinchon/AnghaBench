; ModuleID = '/home/carl/AnghaBench/git/extr_fsck.c_fsck_walk_tag.c'
source_filename = "/home/carl/AnghaBench/git/extr_fsck.c_fsck_walk_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tag = type { i32, i32 }
%struct.fsck_options = type { i32 (i32, i32, i8*, %struct.fsck_options*)* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@OBJ_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tag*, i8*, %struct.fsck_options*)* @fsck_walk_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsck_walk_tag(%struct.tag* %0, i8* %1, %struct.fsck_options* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tag*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fsck_options*, align 8
  %8 = alloca i8*, align 8
  store %struct.tag* %0, %struct.tag** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.fsck_options* %2, %struct.fsck_options** %7, align 8
  %9 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %10 = load %struct.tag*, %struct.tag** %5, align 8
  %11 = getelementptr inbounds %struct.tag, %struct.tag* %10, i32 0, i32 1
  %12 = call i8* @get_object_name(%struct.fsck_options* %9, i32* %11)
  store i8* %12, i8** %8, align 8
  %13 = load %struct.tag*, %struct.tag** %5, align 8
  %14 = call i64 @parse_tag(%struct.tag* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %38

17:                                               ; preds = %3
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %22 = load %struct.tag*, %struct.tag** %5, align 8
  %23 = getelementptr inbounds %struct.tag, %struct.tag* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @put_object_name(%struct.fsck_options* %21, i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %20, %17
  %28 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %29 = getelementptr inbounds %struct.fsck_options, %struct.fsck_options* %28, i32 0, i32 0
  %30 = load i32 (i32, i32, i8*, %struct.fsck_options*)*, i32 (i32, i32, i8*, %struct.fsck_options*)** %29, align 8
  %31 = load %struct.tag*, %struct.tag** %5, align 8
  %32 = getelementptr inbounds %struct.tag, %struct.tag* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @OBJ_ANY, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %37 = call i32 %30(i32 %33, i32 %34, i8* %35, %struct.fsck_options* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %27, %16
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i8* @get_object_name(%struct.fsck_options*, i32*) #1

declare dso_local i64 @parse_tag(%struct.tag*) #1

declare dso_local i32 @put_object_name(%struct.fsck_options*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
