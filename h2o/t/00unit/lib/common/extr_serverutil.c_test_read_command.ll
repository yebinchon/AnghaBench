; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_serverutil.c_test_read_command.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_serverutil.c_test_read_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"t/00unit/assets/read_command.pl\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@__const.test_read_command.argv = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str.2 = private unnamed_addr constant [25 x i8] c"READ_COMMAND_EXIT_STATUS\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"75\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"t/00unit/assets\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_read_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_command() #0 {
  %1 = alloca [3 x i8*], align 16
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast [3 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([3 x i8*]* @__const.test_read_command.argv to i8*), i64 24, i1 false)
  %6 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 0
  %7 = load i8*, i8** %6, align 16
  %8 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 0
  %9 = call i32 @h2o_read_command(i8* %7, i8** %8, %struct.TYPE_4__** %2, i32* %4)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @ok(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %0
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @WIFEXITED(i32 %17)
  %19 = call i32 @ok(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @WEXITSTATUS(i32 %20)
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @ok(i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @h2o_memis(i32 %27, i32 %30, i32 %31)
  %33 = call i32 @ok(i32 %32)
  %34 = call i32 @h2o_buffer_dispose(%struct.TYPE_4__** %2)
  br label %35

35:                                               ; preds = %16, %0
  %36 = call i32 @setenv(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %37 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 0
  %38 = load i8*, i8** %37, align 16
  %39 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 0
  %40 = call i32 @h2o_read_command(i8* %38, i8** %39, %struct.TYPE_4__** %2, i32* %4)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @ok(i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %35
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @WIFEXITED(i32 %48)
  %50 = call i32 @ok(i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @WEXITSTATUS(i32 %51)
  %53 = icmp eq i32 %52, 75
  %54 = zext i1 %53 to i32
  %55 = call i32 @ok(i32 %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 @h2o_memis(i32 %58, i32 %61, i32 %62)
  %64 = call i32 @ok(i32 %63)
  %65 = call i32 @h2o_buffer_dispose(%struct.TYPE_4__** %2)
  br label %66

66:                                               ; preds = %47, %35
  %67 = call i32 @unsetenv(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %68 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %68, align 16
  %69 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 0
  %70 = load i8*, i8** %69, align 16
  %71 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 0
  %72 = call i32 @h2o_read_command(i8* %70, i8** %71, %struct.TYPE_4__** %2, i32* %4)
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %3, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @WIFEXITED(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @WEXITSTATUS(i32 %83)
  %85 = icmp eq i32 %84, 127
  br label %86

86:                                               ; preds = %82, %78, %75
  %87 = phi i1 [ false, %78 ], [ false, %75 ], [ %85, %82 ]
  br label %88

88:                                               ; preds = %86, %66
  %89 = phi i1 [ true, %66 ], [ %87, %86 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @ok(i32 %90)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @h2o_read_command(i8*, i8**, %struct.TYPE_4__**, i32*) #2

declare dso_local i32 @ok(i32) #2

declare dso_local i32 @WIFEXITED(i32) #2

declare dso_local i32 @WEXITSTATUS(i32) #2

declare dso_local i32 @h2o_memis(i32, i32, i32) #2

declare dso_local i32 @H2O_STRLIT(i8*) #2

declare dso_local i32 @h2o_buffer_dispose(%struct.TYPE_4__**) #2

declare dso_local i32 @setenv(i8*, i8*, i32) #2

declare dso_local i32 @unsetenv(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
