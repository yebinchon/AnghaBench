; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_find_sha1_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_find_sha1_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { %struct.packed_git* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.packed_git* @find_sha1_pack(i8* %0, %struct.packed_git* %1) #0 {
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.packed_git*, align 8
  %6 = alloca %struct.packed_git*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.packed_git* %1, %struct.packed_git** %5, align 8
  %7 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  store %struct.packed_git* %7, %struct.packed_git** %6, align 8
  br label %8

8:                                                ; preds = %19, %2
  %9 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %10 = icmp ne %struct.packed_git* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %14 = call i64 @find_pack_entry_one(i8* %12, %struct.packed_git* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  store %struct.packed_git* %17, %struct.packed_git** %3, align 8
  br label %24

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.packed_git*, %struct.packed_git** %6, align 8
  %21 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %20, i32 0, i32 0
  %22 = load %struct.packed_git*, %struct.packed_git** %21, align 8
  store %struct.packed_git* %22, %struct.packed_git** %6, align 8
  br label %8

23:                                               ; preds = %8
  store %struct.packed_git* null, %struct.packed_git** %3, align 8
  br label %24

24:                                               ; preds = %23, %16
  %25 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  ret %struct.packed_git* %25
}

declare dso_local i64 @find_pack_entry_one(i8*, %struct.packed_git*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
