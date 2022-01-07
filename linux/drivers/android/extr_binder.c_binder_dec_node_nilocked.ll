; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_dec_node_nilocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_dec_node_nilocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_node = type { i32, i32, i64, %struct.TYPE_3__, i32, i64, i64, i32, i64, i64, i64, i32, %struct.binder_proc* }
%struct.TYPE_3__ = type { i32 }
%struct.binder_proc = type { i32, i32, i32 }

@BINDER_DEBUG_INTERNAL_REFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"refless node %d deleted\0A\00", align 1
@binder_dead_nodes_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"dead node %d deleted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.binder_node*, i32, i32)* @binder_dec_node_nilocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_dec_node_nilocked(%struct.binder_node* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.binder_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.binder_proc*, align 8
  store %struct.binder_node* %0, %struct.binder_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %10 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %9, i32 0, i32 12
  %11 = load %struct.binder_proc*, %struct.binder_proc** %10, align 8
  store %struct.binder_proc* %11, %struct.binder_proc** %8, align 8
  %12 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %13 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %12, i32 0, i32 11
  %14 = call i32 @assert_spin_locked(i32* %13)
  %15 = load %struct.binder_proc*, %struct.binder_proc** %8, align 8
  %16 = icmp ne %struct.binder_proc* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.binder_proc*, %struct.binder_proc** %8, align 8
  %19 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %18, i32 0, i32 2
  %20 = call i32 @assert_spin_locked(i32* %19)
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %29 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %28, i32 0, i32 10
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %29, align 8
  br label %37

32:                                               ; preds = %24
  %33 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %34 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %39 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %44 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %43, i32 0, i32 10
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %37
  store i32 0, i32* %4, align 4
  br label %168

48:                                               ; preds = %42
  br label %74

49:                                               ; preds = %21
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %54 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %52, %49
  %58 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %59 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %64 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %69 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %68, i32 0, i32 7
  %70 = call i64 @hlist_empty(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67, %62, %57
  store i32 0, i32* %4, align 4
  br label %168

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %48
  %75 = load %struct.binder_proc*, %struct.binder_proc** %8, align 8
  %76 = icmp ne %struct.binder_proc* %75, null
  br i1 %76, label %77, label %102

77:                                               ; preds = %74
  %78 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %79 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %78, i32 0, i32 9
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %84 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %83, i32 0, i32 8
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %82, %77
  %88 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %89 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = call i64 @list_empty(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %95 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %94, i32 0, i32 3
  %96 = load %struct.binder_proc*, %struct.binder_proc** %8, align 8
  %97 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %96, i32 0, i32 1
  %98 = call i32 @binder_enqueue_work_ilocked(%struct.TYPE_3__* %95, i32* %97)
  %99 = load %struct.binder_proc*, %struct.binder_proc** %8, align 8
  %100 = call i32 @binder_wakeup_proc_ilocked(%struct.binder_proc* %99)
  br label %101

101:                                              ; preds = %93, %87
  br label %167

102:                                              ; preds = %82, %74
  %103 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %104 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %103, i32 0, i32 7
  %105 = call i64 @hlist_empty(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %166

107:                                              ; preds = %102
  %108 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %109 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %166, label %112

112:                                              ; preds = %107
  %113 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %114 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %166, label %117

117:                                              ; preds = %112
  %118 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %119 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %166, label %122

122:                                              ; preds = %117
  %123 = load %struct.binder_proc*, %struct.binder_proc** %8, align 8
  %124 = icmp ne %struct.binder_proc* %123, null
  br i1 %124, label %125, label %139

125:                                              ; preds = %122
  %126 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %127 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %126, i32 0, i32 3
  %128 = call i32 @binder_dequeue_work_ilocked(%struct.TYPE_3__* %127)
  %129 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %130 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %129, i32 0, i32 4
  %131 = load %struct.binder_proc*, %struct.binder_proc** %8, align 8
  %132 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %131, i32 0, i32 0
  %133 = call i32 @rb_erase(i32* %130, i32* %132)
  %134 = load i32, i32* @BINDER_DEBUG_INTERNAL_REFS, align 4
  %135 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %136 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @binder_debug(i32 %134, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %137)
  br label %165

139:                                              ; preds = %122
  %140 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %141 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = call i64 @list_empty(i32* %142)
  %144 = icmp ne i64 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = call i32 @BUG_ON(i32 %146)
  %148 = call i32 @spin_lock(i32* @binder_dead_nodes_lock)
  %149 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %150 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %139
  %154 = call i32 @spin_unlock(i32* @binder_dead_nodes_lock)
  store i32 0, i32* %4, align 4
  br label %168

155:                                              ; preds = %139
  %156 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %157 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %156, i32 0, i32 1
  %158 = call i32 @hlist_del(i32* %157)
  %159 = call i32 @spin_unlock(i32* @binder_dead_nodes_lock)
  %160 = load i32, i32* @BINDER_DEBUG_INTERNAL_REFS, align 4
  %161 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %162 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @binder_debug(i32 %160, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %155, %125
  store i32 1, i32* %4, align 4
  br label %168

166:                                              ; preds = %117, %112, %107, %102
  br label %167

167:                                              ; preds = %166, %101
  store i32 0, i32* %4, align 4
  br label %168

168:                                              ; preds = %167, %165, %153, %72, %47
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i64 @hlist_empty(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @binder_enqueue_work_ilocked(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @binder_wakeup_proc_ilocked(%struct.binder_proc*) #1

declare dso_local i32 @binder_dequeue_work_ilocked(%struct.TYPE_3__*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @binder_debug(i32, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hlist_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
