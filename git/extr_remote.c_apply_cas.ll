; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_apply_cas.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_apply_cas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.push_cas_option = type { i32, i32, %struct.push_cas* }
%struct.push_cas = type { i32, i32, i32 }
%struct.remote = type { i32 }
%struct.ref = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.push_cas_option*, %struct.remote*, %struct.ref*)* @apply_cas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_cas(%struct.push_cas_option* %0, %struct.remote* %1, %struct.ref* %2) #0 {
  %4 = alloca %struct.push_cas_option*, align 8
  %5 = alloca %struct.remote*, align 8
  %6 = alloca %struct.ref*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.push_cas*, align 8
  store %struct.push_cas_option* %0, %struct.push_cas_option** %4, align 8
  store %struct.remote* %1, %struct.remote** %5, align 8
  store %struct.ref* %2, %struct.ref** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %59, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.push_cas_option*, %struct.push_cas_option** %4, align 8
  %12 = getelementptr inbounds %struct.push_cas_option, %struct.push_cas_option* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %9
  %16 = load %struct.push_cas_option*, %struct.push_cas_option** %4, align 8
  %17 = getelementptr inbounds %struct.push_cas_option, %struct.push_cas_option* %16, i32 0, i32 2
  %18 = load %struct.push_cas*, %struct.push_cas** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.push_cas, %struct.push_cas* %18, i64 %20
  store %struct.push_cas* %21, %struct.push_cas** %8, align 8
  %22 = load %struct.push_cas*, %struct.push_cas** %8, align 8
  %23 = getelementptr inbounds %struct.push_cas, %struct.push_cas* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ref*, %struct.ref** %6, align 8
  %26 = getelementptr inbounds %struct.ref, %struct.ref* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @refname_match(i32 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %15
  br label %59

31:                                               ; preds = %15
  %32 = load %struct.ref*, %struct.ref** %6, align 8
  %33 = getelementptr inbounds %struct.ref, %struct.ref* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.push_cas*, %struct.push_cas** %8, align 8
  %35 = getelementptr inbounds %struct.push_cas, %struct.push_cas* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load %struct.ref*, %struct.ref** %6, align 8
  %40 = getelementptr inbounds %struct.ref, %struct.ref* %39, i32 0, i32 1
  %41 = load %struct.push_cas*, %struct.push_cas** %8, align 8
  %42 = getelementptr inbounds %struct.push_cas, %struct.push_cas* %41, i32 0, i32 0
  %43 = call i32 @oidcpy(i32* %40, i32* %42)
  br label %58

44:                                               ; preds = %31
  %45 = load %struct.remote*, %struct.remote** %5, align 8
  %46 = load %struct.ref*, %struct.ref** %6, align 8
  %47 = getelementptr inbounds %struct.ref, %struct.ref* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ref*, %struct.ref** %6, align 8
  %50 = getelementptr inbounds %struct.ref, %struct.ref* %49, i32 0, i32 1
  %51 = call i64 @remote_tracking(%struct.remote* %45, i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load %struct.ref*, %struct.ref** %6, align 8
  %55 = getelementptr inbounds %struct.ref, %struct.ref* %54, i32 0, i32 1
  %56 = call i32 @oidclr(i32* %55)
  br label %57

57:                                               ; preds = %53, %44
  br label %58

58:                                               ; preds = %57, %38
  br label %83

59:                                               ; preds = %30
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %9

62:                                               ; preds = %9
  %63 = load %struct.push_cas_option*, %struct.push_cas_option** %4, align 8
  %64 = getelementptr inbounds %struct.push_cas_option, %struct.push_cas_option* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %83

68:                                               ; preds = %62
  %69 = load %struct.ref*, %struct.ref** %6, align 8
  %70 = getelementptr inbounds %struct.ref, %struct.ref* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = load %struct.remote*, %struct.remote** %5, align 8
  %72 = load %struct.ref*, %struct.ref** %6, align 8
  %73 = getelementptr inbounds %struct.ref, %struct.ref* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ref*, %struct.ref** %6, align 8
  %76 = getelementptr inbounds %struct.ref, %struct.ref* %75, i32 0, i32 1
  %77 = call i64 @remote_tracking(%struct.remote* %71, i32 %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %68
  %80 = load %struct.ref*, %struct.ref** %6, align 8
  %81 = getelementptr inbounds %struct.ref, %struct.ref* %80, i32 0, i32 1
  %82 = call i32 @oidclr(i32* %81)
  br label %83

83:                                               ; preds = %58, %67, %79, %68
  ret void
}

declare dso_local i32 @refname_match(i32, i32) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local i64 @remote_tracking(%struct.remote*, i32, i32*) #1

declare dso_local i32 @oidclr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
