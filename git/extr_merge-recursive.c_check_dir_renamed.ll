; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_check_dir_renamed.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_check_dir_renamed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_rename_entry = type { i32 }
%struct.hashmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dir_rename_entry* (i8*, %struct.hashmap*)* @check_dir_renamed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dir_rename_entry* @check_dir_renamed(i8* %0, %struct.hashmap* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hashmap*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dir_rename_entry*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.hashmap* %1, %struct.hashmap** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @xstrdup(i8* %8)
  store i8* %9, i8** %5, align 8
  store %struct.dir_rename_entry* null, %struct.dir_rename_entry** %7, align 8
  br label %10

10:                                               ; preds = %22, %2
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @strrchr(i8* %11, i8 signext 47)
  store i8* %12, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load i8*, i8** %6, align 8
  store i8 0, i8* %15, align 1
  %16 = load %struct.hashmap*, %struct.hashmap** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call %struct.dir_rename_entry* @dir_rename_find_entry(%struct.hashmap* %16, i8* %17)
  store %struct.dir_rename_entry* %18, %struct.dir_rename_entry** %7, align 8
  %19 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %7, align 8
  %20 = icmp ne %struct.dir_rename_entry* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %23

22:                                               ; preds = %14
  br label %10

23:                                               ; preds = %21, %10
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @free(i8* %24)
  %26 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %7, align 8
  ret %struct.dir_rename_entry* %26
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local %struct.dir_rename_entry* @dir_rename_find_entry(%struct.hashmap*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
