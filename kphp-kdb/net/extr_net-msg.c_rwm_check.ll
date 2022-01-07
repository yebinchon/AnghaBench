; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_rwm_check.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_rwm_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_message = type { i64, i32, i32, i32, %struct.msg_part*, %struct.msg_part* }
%struct.msg_part = type { i32, i32, %struct.msg_part* }

@RM_INIT_MAGIC = common dso_local global i64 0, align 8
@RM_TMP_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rwm_check(%struct.raw_message* %0) #0 {
  %2 = alloca %struct.raw_message*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.msg_part*, align 8
  %5 = alloca i32, align 4
  store %struct.raw_message* %0, %struct.raw_message** %2, align 8
  %6 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %7 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @RM_INIT_MAGIC, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %13 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RM_TMP_MAGIC, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i1 [ true, %1 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %22 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %21, i32 0, i32 5
  %23 = load %struct.msg_part*, %struct.msg_part** %22, align 8
  %24 = icmp ne %struct.msg_part* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %27 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  br label %104

33:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  %34 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %35 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %34, i32 0, i32 5
  %36 = load %struct.msg_part*, %struct.msg_part** %35, align 8
  store %struct.msg_part* %36, %struct.msg_part** %4, align 8
  br label %37

37:                                               ; preds = %85, %33
  %38 = load %struct.msg_part*, %struct.msg_part** %4, align 8
  %39 = icmp ne %struct.msg_part* %38, null
  br i1 %39, label %40, label %89

40:                                               ; preds = %37
  %41 = load %struct.msg_part*, %struct.msg_part** %4, align 8
  %42 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %43 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %42, i32 0, i32 4
  %44 = load %struct.msg_part*, %struct.msg_part** %43, align 8
  %45 = icmp eq %struct.msg_part* %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %48 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  br label %58

50:                                               ; preds = %40
  %51 = load %struct.msg_part*, %struct.msg_part** %4, align 8
  %52 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.msg_part*, %struct.msg_part** %4, align 8
  %55 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %53, %56
  br label %58

58:                                               ; preds = %50, %46
  %59 = phi i32 [ %49, %46 ], [ %57, %50 ]
  %60 = load %struct.msg_part*, %struct.msg_part** %4, align 8
  %61 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %62 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %61, i32 0, i32 5
  %63 = load %struct.msg_part*, %struct.msg_part** %62, align 8
  %64 = icmp eq %struct.msg_part* %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %67 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  br label %73

69:                                               ; preds = %58
  %70 = load %struct.msg_part*, %struct.msg_part** %4, align 8
  %71 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i32 [ %68, %65 ], [ %72, %69 ]
  %75 = sub nsw i32 %59, %74
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %3, align 4
  %79 = load %struct.msg_part*, %struct.msg_part** %4, align 8
  %80 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %81 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %80, i32 0, i32 4
  %82 = load %struct.msg_part*, %struct.msg_part** %81, align 8
  %83 = icmp eq %struct.msg_part* %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %89

85:                                               ; preds = %73
  %86 = load %struct.msg_part*, %struct.msg_part** %4, align 8
  %87 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %86, i32 0, i32 2
  %88 = load %struct.msg_part*, %struct.msg_part** %87, align 8
  store %struct.msg_part* %88, %struct.msg_part** %4, align 8
  br label %37

89:                                               ; preds = %84, %37
  %90 = load %struct.msg_part*, %struct.msg_part** %4, align 8
  %91 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %92 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %91, i32 0, i32 4
  %93 = load %struct.msg_part*, %struct.msg_part** %92, align 8
  %94 = icmp eq %struct.msg_part* %90, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load i32, i32* %3, align 4
  %98 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %99 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %97, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  br label %104

104:                                              ; preds = %89, %25
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
