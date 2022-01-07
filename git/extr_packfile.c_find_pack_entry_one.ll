; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_find_pack_entry_one.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_find_pack_entry_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i8* }
%struct.object_id = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_pack_entry_one(i8* %0, %struct.packed_git* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.packed_git*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.packed_git* %1, %struct.packed_git** %5, align 8
  %9 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %10 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %16 = call i64 @open_pack_index(%struct.packed_git* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %33

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %2
  %21 = getelementptr inbounds %struct.object_id, %struct.object_id* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @hashcpy(i32 %22, i8* %23)
  %25 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %26 = call i64 @bsearch_pack(%struct.object_id* %7, %struct.packed_git* %25, i32* %8)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @nth_packed_object_offset(%struct.packed_git* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %28, %18
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @open_pack_index(%struct.packed_git*) #1

declare dso_local i32 @hashcpy(i32, i8*) #1

declare dso_local i64 @bsearch_pack(%struct.object_id*, %struct.packed_git*, i32*) #1

declare dso_local i32 @nth_packed_object_offset(%struct.packed_git*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
