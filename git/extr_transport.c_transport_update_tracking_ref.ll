; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_transport_update_tracking_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_transport_update_tracking_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote = type { i32 }
%struct.ref = type { i64, i32, i64, i32 }
%struct.refspec_item = type { i8*, i32 }

@REF_STATUS_OK = common dso_local global i64 0, align 8
@REF_STATUS_UPTODATE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"updating local tracking ref '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"update by push\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transport_update_tracking_ref(%struct.remote* %0, %struct.ref* %1, i32 %2) #0 {
  %4 = alloca %struct.remote*, align 8
  %5 = alloca %struct.ref*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.refspec_item, align 8
  store %struct.remote* %0, %struct.remote** %4, align 8
  store %struct.ref* %1, %struct.ref** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ref*, %struct.ref** %5, align 8
  %9 = getelementptr inbounds %struct.ref, %struct.ref* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @REF_STATUS_OK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.ref*, %struct.ref** %5, align 8
  %15 = getelementptr inbounds %struct.ref, %struct.ref* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @REF_STATUS_UPTODATE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %56

20:                                               ; preds = %13, %3
  %21 = load %struct.ref*, %struct.ref** %5, align 8
  %22 = getelementptr inbounds %struct.ref, %struct.ref* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %7, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %7, i32 0, i32 0
  store i8* null, i8** %25, align 8
  %26 = load %struct.remote*, %struct.remote** %4, align 8
  %27 = call i32 @remote_find_tracking(%struct.remote* %26, %struct.refspec_item* %7)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %56, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @stderr, align 4
  %34 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %7, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load %struct.ref*, %struct.ref** %5, align 8
  %39 = getelementptr inbounds %struct.ref, %struct.ref* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %7, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @delete_ref(i32* null, i8* %44, i32* null, i32 0)
  br label %52

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %7, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.ref*, %struct.ref** %5, align 8
  %50 = getelementptr inbounds %struct.ref, %struct.ref* %49, i32 0, i32 1
  %51 = call i32 @update_ref(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %48, i32* %50, i32* null, i32 0, i32 0)
  br label %52

52:                                               ; preds = %46, %42
  %53 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %7, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @free(i8* %54)
  br label %56

56:                                               ; preds = %19, %52, %20
  ret void
}

declare dso_local i32 @remote_find_tracking(%struct.remote*, %struct.refspec_item*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @delete_ref(i32*, i8*, i32*, i32) #1

declare dso_local i32 @update_ref(i8*, i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
