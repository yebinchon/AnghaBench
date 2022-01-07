; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_grab_person.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_grab_person.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.atom_value = type { i8* }

@used_atom_cnt = common dso_local global i32 0, align 4
@used_atom = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"email\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"tagger\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"committer\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"creatordate\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"creator\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.atom_value*, i32, i8*)* @grab_person to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grab_person(i8* %0, %struct.atom_value* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.atom_value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.atom_value*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.atom_value*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.atom_value* %1, %struct.atom_value** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %153, %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @used_atom_cnt, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %156

22:                                               ; preds = %18
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @used_atom, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %12, align 8
  %29 = load %struct.atom_value*, %struct.atom_value** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %29, i64 %31
  store %struct.atom_value* %32, %struct.atom_value** %13, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load i8*, i8** %12, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 42
  %42 = zext i1 %41 to i32
  %43 = icmp ne i32 %37, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %22
  br label %153

45:                                               ; preds = %22
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %12, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @strncmp(i8* %52, i8* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %153

58:                                               ; preds = %51
  %59 = load i8*, i8** %12, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %58
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %66
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load i8*, i8** %12, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = call i64 @starts_with(i8* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  br label %153

88:                                               ; preds = %80, %73, %66, %58
  %89 = load i8*, i8** %11, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load i8*, i8** %5, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = call i8* @find_wholine(i8* %92, i32 %93, i8* %94)
  store i8* %95, i8** %11, align 8
  br label %96

96:                                               ; preds = %91, %88
  %97 = load i8*, i8** %11, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  br label %234

100:                                              ; preds = %96
  %101 = load i8*, i8** %12, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %100
  %109 = load i8*, i8** %11, align 8
  %110 = call i8* @copy_line(i8* %109)
  %111 = load %struct.atom_value*, %struct.atom_value** %13, align 8
  %112 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  br label %152

113:                                              ; preds = %100
  %114 = load i8*, i8** %12, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = call i64 @strcmp(i8* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %113
  %121 = load i8*, i8** %11, align 8
  %122 = call i8* @copy_name(i8* %121)
  %123 = load %struct.atom_value*, %struct.atom_value** %13, align 8
  %124 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  br label %151

125:                                              ; preds = %113
  %126 = load i8*, i8** %12, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = call i64 @strcmp(i8* %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %125
  %133 = load i8*, i8** %11, align 8
  %134 = call i8* @copy_email(i8* %133)
  %135 = load %struct.atom_value*, %struct.atom_value** %13, align 8
  %136 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  br label %150

137:                                              ; preds = %125
  %138 = load i8*, i8** %12, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = call i64 @starts_with(i8* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load i8*, i8** %11, align 8
  %146 = load %struct.atom_value*, %struct.atom_value** %13, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = call i32 @grab_date(i8* %145, %struct.atom_value* %146, i8* %147)
  br label %149

149:                                              ; preds = %144, %137
  br label %150

150:                                              ; preds = %149, %132
  br label %151

151:                                              ; preds = %150, %120
  br label %152

152:                                              ; preds = %151, %108
  br label %153

153:                                              ; preds = %152, %87, %57, %44
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %18

156:                                              ; preds = %18
  %157 = load i8*, i8** %5, align 8
  %158 = call i64 @strcmp(i8* %157, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load i8*, i8** %5, align 8
  %162 = call i64 @strcmp(i8* %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  br label %234

165:                                              ; preds = %160, %156
  %166 = load i8*, i8** %11, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %173, label %168

168:                                              ; preds = %165
  %169 = load i8*, i8** %5, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load i8*, i8** %8, align 8
  %172 = call i8* @find_wholine(i8* %169, i32 %170, i8* %171)
  store i8* %172, i8** %11, align 8
  br label %173

173:                                              ; preds = %168, %165
  %174 = load i8*, i8** %11, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %173
  br label %234

177:                                              ; preds = %173
  store i32 0, i32* %9, align 4
  br label %178

178:                                              ; preds = %231, %177
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @used_atom_cnt, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %234

182:                                              ; preds = %178
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** @used_atom, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  store i8* %188, i8** %14, align 8
  %189 = load %struct.atom_value*, %struct.atom_value** %6, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %189, i64 %191
  store %struct.atom_value* %192, %struct.atom_value** %15, align 8
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i32
  %198 = load i8*, i8** %14, align 8
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 42
  %202 = zext i1 %201 to i32
  %203 = icmp ne i32 %197, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %182
  br label %231

205:                                              ; preds = %182
  %206 = load i32, i32* %7, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load i8*, i8** %14, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %14, align 8
  br label %211

211:                                              ; preds = %208, %205
  %212 = load i8*, i8** %14, align 8
  %213 = call i64 @starts_with(i8* %212, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %211
  %216 = load i8*, i8** %11, align 8
  %217 = load %struct.atom_value*, %struct.atom_value** %15, align 8
  %218 = load i8*, i8** %14, align 8
  %219 = call i32 @grab_date(i8* %216, %struct.atom_value* %217, i8* %218)
  br label %230

220:                                              ; preds = %211
  %221 = load i8*, i8** %14, align 8
  %222 = call i64 @strcmp(i8* %221, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %229, label %224

224:                                              ; preds = %220
  %225 = load i8*, i8** %11, align 8
  %226 = call i8* @copy_line(i8* %225)
  %227 = load %struct.atom_value*, %struct.atom_value** %15, align 8
  %228 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %227, i32 0, i32 0
  store i8* %226, i8** %228, align 8
  br label %229

229:                                              ; preds = %224, %220
  br label %230

230:                                              ; preds = %229, %215
  br label %231

231:                                              ; preds = %230, %204
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %9, align 4
  br label %178

234:                                              ; preds = %99, %164, %176, %178
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i8* @find_wholine(i8*, i32, i8*) #1

declare dso_local i8* @copy_line(i8*) #1

declare dso_local i8* @copy_name(i8*) #1

declare dso_local i8* @copy_email(i8*) #1

declare dso_local i32 @grab_date(i8*, %struct.atom_value*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
