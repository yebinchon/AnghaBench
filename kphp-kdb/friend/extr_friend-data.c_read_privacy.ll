; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_read_privacy.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_read_privacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_5__*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unexpected end of file in read_privacy\0A\00", align 1
@tot_privacy_len = common dso_local global i32 0, align 4
@privacy_nodes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* ()* @read_privacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @read_privacy() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = call i8* @readin(i32 1)
  store i8* %6, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %1, align 8
  br label %88

12:                                               ; preds = %0
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %3, align 1
  %16 = call i32 @readadv(i32 1)
  %17 = load i8, i8* %3, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = load i8, i8* %3, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 3
  br label %24

24:                                               ; preds = %20, %12
  %25 = phi i1 [ true, %12 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i8, i8* %3, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %1, align 8
  br label %88

32:                                               ; preds = %24
  %33 = call i8* @readin(i32 16)
  store i8* %33, i8** %2, align 8
  %34 = load i8*, i8** %2, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %1, align 8
  br label %88

39:                                               ; preds = %32
  %40 = load i8*, i8** %2, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 -16
  %42 = bitcast i8* %41 to %struct.TYPE_5__*
  %43 = call i32 @compute_privacy_size(%struct.TYPE_5__* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call %struct.TYPE_5__* @zmalloc(i32 %44)
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 %47, 16
  %49 = trunc i64 %48 to i32
  %50 = call i8* @readin(i32 %49)
  store i8* %50, i8** %2, align 8
  %51 = load i8*, i8** %2, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %39
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %39
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i8*, i8** %2, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 %61, 16
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memcpy(i32* %58, i8* %59, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 %66, 16
  %68 = trunc i64 %67 to i32
  %69 = call i32 @readadv(i32 %68)
  %70 = call %struct.TYPE_5__* @read_privacy()
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %72, align 8
  %73 = call %struct.TYPE_5__* @read_privacy()
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %75, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = call i32 @compute_privacy_size(%struct.TYPE_5__* %77)
  %79 = icmp eq i32 %76, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @tot_privacy_len, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* @tot_privacy_len, align 4
  %85 = load i32, i32* @privacy_nodes, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @privacy_nodes, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %87, %struct.TYPE_5__** %1, align 8
  br label %88

88:                                               ; preds = %56, %36, %31, %9
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  ret %struct.TYPE_5__* %89
}

declare dso_local i8* @readin(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @readadv(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @compute_privacy_size(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @zmalloc(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
