; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_add_patterns_from_file_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_add_patterns_from_file_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_struct = type { i32, i32 }
%struct.oid_stat = type { i32 }
%struct.pattern_list = type { i32 }

@EXC_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot use %s as an exclude file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dir_struct*, i8*, %struct.oid_stat*)* @add_patterns_from_file_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_patterns_from_file_1(%struct.dir_struct* %0, i8* %1, %struct.oid_stat* %2) #0 {
  %4 = alloca %struct.dir_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.oid_stat*, align 8
  %7 = alloca %struct.pattern_list*, align 8
  store %struct.dir_struct* %0, %struct.dir_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.oid_stat* %2, %struct.oid_stat** %6, align 8
  %8 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %9 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %14 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %12, %3
  %18 = load %struct.dir_struct*, %struct.dir_struct** %4, align 8
  %19 = load i32, i32* @EXC_FILE, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call %struct.pattern_list* @add_pattern_list(%struct.dir_struct* %18, i32 %19, i8* %20)
  store %struct.pattern_list* %21, %struct.pattern_list** %7, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.pattern_list*, %struct.pattern_list** %7, align 8
  %24 = load %struct.oid_stat*, %struct.oid_stat** %6, align 8
  %25 = call i64 @add_patterns(i8* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, %struct.pattern_list* %23, i32* null, %struct.oid_stat* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @die(i32 %28, i8* %29)
  br label %31

31:                                               ; preds = %27, %17
  ret void
}

declare dso_local %struct.pattern_list* @add_pattern_list(%struct.dir_struct*, i32, i8*) #1

declare dso_local i64 @add_patterns(i8*, i8*, i32, %struct.pattern_list*, i32*, %struct.oid_stat*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
