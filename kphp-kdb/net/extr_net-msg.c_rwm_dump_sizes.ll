; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_rwm_dump_sizes.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_rwm_dump_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_message = type { i32, i32, i32, %struct.msg_part*, %struct.msg_part* }
%struct.msg_part = type { i32, i32, %struct.msg_part* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"( ) # %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" ) # %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rwm_dump_sizes(%struct.raw_message* %0) #0 {
  %2 = alloca %struct.raw_message*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.msg_part*, align 8
  %5 = alloca i32, align 4
  store %struct.raw_message* %0, %struct.raw_message** %2, align 8
  %6 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %7 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %6, i32 0, i32 4
  %8 = load %struct.msg_part*, %struct.msg_part** %7, align 8
  %9 = icmp ne %struct.msg_part* %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @stderr, align 4
  %12 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %13 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %17 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  br label %104

23:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  %24 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %25 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %24, i32 0, i32 4
  %26 = load %struct.msg_part*, %struct.msg_part** %25, align 8
  store %struct.msg_part* %26, %struct.msg_part** %4, align 8
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %80, %23
  %30 = load %struct.msg_part*, %struct.msg_part** %4, align 8
  %31 = icmp ne %struct.msg_part* %30, null
  br i1 %31, label %32, label %84

32:                                               ; preds = %29
  %33 = load %struct.msg_part*, %struct.msg_part** %4, align 8
  %34 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %35 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %34, i32 0, i32 3
  %36 = load %struct.msg_part*, %struct.msg_part** %35, align 8
  %37 = icmp eq %struct.msg_part* %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %40 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  br label %50

42:                                               ; preds = %32
  %43 = load %struct.msg_part*, %struct.msg_part** %4, align 8
  %44 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.msg_part*, %struct.msg_part** %4, align 8
  %47 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  br label %50

50:                                               ; preds = %42, %38
  %51 = phi i32 [ %41, %38 ], [ %49, %42 ]
  %52 = load %struct.msg_part*, %struct.msg_part** %4, align 8
  %53 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %54 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %53, i32 0, i32 4
  %55 = load %struct.msg_part*, %struct.msg_part** %54, align 8
  %56 = icmp eq %struct.msg_part* %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %59 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  br label %65

61:                                               ; preds = %50
  %62 = load %struct.msg_part*, %struct.msg_part** %4, align 8
  %63 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i32 [ %60, %57 ], [ %64, %61 ]
  %67 = sub nsw i32 %51, %66
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* @stderr, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %3, align 4
  %74 = load %struct.msg_part*, %struct.msg_part** %4, align 8
  %75 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %76 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %75, i32 0, i32 3
  %77 = load %struct.msg_part*, %struct.msg_part** %76, align 8
  %78 = icmp eq %struct.msg_part* %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  br label %84

80:                                               ; preds = %65
  %81 = load %struct.msg_part*, %struct.msg_part** %4, align 8
  %82 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %81, i32 0, i32 2
  %83 = load %struct.msg_part*, %struct.msg_part** %82, align 8
  store %struct.msg_part* %83, %struct.msg_part** %4, align 8
  br label %29

84:                                               ; preds = %79, %29
  %85 = load %struct.msg_part*, %struct.msg_part** %4, align 8
  %86 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %87 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %86, i32 0, i32 3
  %88 = load %struct.msg_part*, %struct.msg_part** %87, align 8
  %89 = icmp eq %struct.msg_part* %85, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i32, i32* @stderr, align 4
  %93 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %94 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %3, align 4
  %98 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %99 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %97, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  br label %104

104:                                              ; preds = %84, %10
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
