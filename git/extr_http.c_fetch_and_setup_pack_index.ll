; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_fetch_and_setup_pack_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_fetch_and_setup_pack_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { %struct.packed_git* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packed_git**, i8*, i8*)* @fetch_and_setup_pack_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_and_setup_pack_index(%struct.packed_git** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.packed_git**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.packed_git*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.packed_git** %0, %struct.packed_git*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @has_pack_index(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @sha1_pack_index_name(i8* %16)
  %18 = call %struct.packed_git* @parse_pack_index(i8* %15, i8* %17)
  store %struct.packed_git* %18, %struct.packed_git** %8, align 8
  %19 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %20 = icmp ne %struct.packed_git* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %67

22:                                               ; preds = %14
  br label %60

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* @fetch_pack_index(i8* %24, i8* %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %67

30:                                               ; preds = %23
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call %struct.packed_git* @parse_pack_index(i8* %31, i8* %32)
  store %struct.packed_git* %33, %struct.packed_git** %8, align 8
  %34 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %35 = icmp ne %struct.packed_git* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @unlink(i8* %37)
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @free(i8* %39)
  store i32 -1, i32* %4, align 4
  br label %67

41:                                               ; preds = %30
  %42 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %43 = call i32 @verify_pack_index(%struct.packed_git* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %48 = call i32 @close_pack_index(%struct.packed_git* %47)
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i8* @sha1_pack_index_name(i8* %50)
  %52 = call i32 @finalize_object_file(i8* %49, i8* %51)
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 -1, i32* %4, align 4
  br label %67

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %22
  %61 = load %struct.packed_git**, %struct.packed_git*** %5, align 8
  %62 = load %struct.packed_git*, %struct.packed_git** %61, align 8
  %63 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %64 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %63, i32 0, i32 0
  store %struct.packed_git* %62, %struct.packed_git** %64, align 8
  %65 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %66 = load %struct.packed_git**, %struct.packed_git*** %5, align 8
  store %struct.packed_git* %65, %struct.packed_git** %66, align 8
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %60, %58, %36, %29, %21
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @has_pack_index(i8*) #1

declare dso_local %struct.packed_git* @parse_pack_index(i8*, i8*) #1

declare dso_local i8* @sha1_pack_index_name(i8*) #1

declare dso_local i8* @fetch_pack_index(i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @verify_pack_index(%struct.packed_git*) #1

declare dso_local i32 @close_pack_index(%struct.packed_git*) #1

declare dso_local i32 @finalize_object_file(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
