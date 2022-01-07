; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_delete_single_user_group_fast.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_delete_single_user_group_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user = type { %struct.user_groups* }
%struct.user_groups = type { i32, i32* }

@MAX_USERS = common dso_local global i32 0, align 4
@User = common dso_local global %struct.user** null, align 8
@q_grp_id = common dso_local global i32 0, align 4
@user_group_pairs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @delete_single_user_group_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_single_user_group_fast(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.user*, align 8
  %6 = alloca %struct.user_groups*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MAX_USERS, align 4
  %12 = icmp ult i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.user**, %struct.user*** @User, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.user*, %struct.user** %15, i64 %17
  %19 = load %struct.user*, %struct.user** %18, align 8
  store %struct.user* %19, %struct.user** %5, align 8
  %20 = load %struct.user*, %struct.user** %5, align 8
  %21 = icmp ne %struct.user* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.user*, %struct.user** %5, align 8
  %24 = getelementptr inbounds %struct.user, %struct.user* %23, i32 0, i32 0
  %25 = load %struct.user_groups*, %struct.user_groups** %24, align 8
  %26 = icmp ne %struct.user_groups* %25, null
  br label %27

27:                                               ; preds = %22, %2
  %28 = phi i1 [ false, %2 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.user*, %struct.user** %5, align 8
  %32 = getelementptr inbounds %struct.user, %struct.user* %31, i32 0, i32 0
  %33 = load %struct.user_groups*, %struct.user_groups** %32, align 8
  store %struct.user_groups* %33, %struct.user_groups** %6, align 8
  store i32 -1, i32* %7, align 4
  %34 = load %struct.user_groups*, %struct.user_groups** %6, align 8
  %35 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %60, %27
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %38, %39
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %43, %44
  %46 = ashr i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.user_groups*, %struct.user_groups** %6, align 8
  %49 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %47, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %8, align 4
  br label %60

58:                                               ; preds = %42
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %58, %56
  br label %37

61:                                               ; preds = %37
  %62 = load i32, i32* %7, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load %struct.user_groups*, %struct.user_groups** %6, align 8
  %66 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %71, %72
  br label %74

74:                                               ; preds = %64, %61
  %75 = phi i1 [ false, %61 ], [ %73, %64 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.user_groups*, %struct.user_groups** %6, align 8
  %79 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load %struct.user_groups*, %struct.user_groups** %6, align 8
  %85 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load %struct.user_groups*, %struct.user_groups** %6, align 8
  %92 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sub nsw i32 %93, %94
  %96 = sub nsw i32 %95, 1
  %97 = mul nsw i32 %96, 4
  %98 = call i32 @memmove(i32* %83, i32* %90, i32 %97)
  %99 = load %struct.user_groups*, %struct.user_groups** %6, align 8
  %100 = getelementptr inbounds %struct.user_groups, %struct.user_groups* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @q_grp_id, align 4
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @field_value_hash(i32 %104, i32 %105)
  %107 = call i32 @delete_user_word(i32 %103, i32 %106)
  %108 = load i32, i32* @user_group_pairs, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* @user_group_pairs, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @delete_user_word(i32, i32) #1

declare dso_local i32 @field_value_hash(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
